class Employee {
    constructor() {
        this.identity = ko.observable("").extend({
            tcKimlikNo: true,
            required: true
        });
        this.fullname = ko.observable("").extend({
            minLength: 5,
            required: true
        });
        this.salary = ko.observable(10000).extend({
            min: 5000,
            required: true
        });
        this.iban = ko.observable("").extend({
            iban: true
        });
        this.birthYear = ko.observable(1970).extend({
            required: true,
            min: 1950
        });
        this.jobStyle = ko.observable("FULL_TIME");
        this.department = ko.observable("");

        this.photo = ko.observable(AppConfig.NO_IMAGE);
        this.getJson = this.getJson.bind(this);
        this.isEmployeeValid = this.isEmployeeValid.bind(this);
        this.update = this.update.bind(this);
        this.validate = this.validate.bind(this);
        // this.isValid = ko.computed(this.isEmployeeValid);
        this.isValid = ko.computed(() => {
            for (let prop in this) {
                let o = this[prop];
                if (ko.isObservable(o) && o.hasOwnProperty('rules')) {
                    if (!o.isValid()) return false;
                }
            }
            return true;
        });
    }

    validate() {
        for (let prop in this) {
            let o = this[prop];
            if (ko.isObservable(o) && o.hasOwnProperty('rules')) {
                ko.validation.validateObservable(o);
            }
        }
    }

    isEmployeeValid() {
        for (let prop in this) {
            let o = this[prop];
            if (ko.isObservable(o) && o.hasOwnProperty('rules')) {
                if (!o.isValid()) return false;
            }
        }
        return true;
    }

    getJson() {
        let raw = ko.toJS(this);
        return JSON.stringify(raw);
    }

    update(emp) {
        for (let attr in emp) {
            if (this.hasOwnProperty(attr)) {
                if (ko.isObservable(this[attr]))
                    this[attr](emp[attr]);
                else
                    this[attr] = emp[attr];
            }
        }
        this["photo"](toSrcImage(emp.photo))
    }
}

class HRViewModel {
    constructor() {
        // resource
        this.employee = new Employee();
        this.employees = ko.observableArray([]);
        this.totalSalary = ko.computed(() => {
            return 0.0;
        });
        this.averageSalary = ko.computed(() => {
            return this.totalSalary() / this.employees().length;
        });
        // observable
        this.fileData = ko.observable({
            dataUrl: ko.observable(AppConfig.NO_IMAGE)
        });
        this.departments = ko.observableArray(["Sales", "Finance", "IT", "HR"]);
        this.jobStyles = ko.observableArray(["PART_TIME", "FULL_TIME"]);
        this.handleError = (xhr) => {
            toastr.error(xhr.responseJSON);
        }
        this.socket = io("ws://localhost:8100");
        this.socket.on('connect', () => {
            toastr.success("Connected to the server!")
            console.log("Connected!")
            this.socket.on('fire', (emp) => {
                this.employees(
                    this.employees().filter(e => e.identity != emp.employee.identity)
                );
                toastr.error(`${emp.employee.fullname} is fired!`)
            });
            this.socket.on('hire', (emp) => {
                this.employees.push(emp.employee);
                toastr.success(`${emp.employee.fullname} is hired!`)
            });
        });
        // bindings
        this.insertFile = this.insertFile.bind(this);
        this.addEmployee = this.addEmployee.bind(this);
        this.updateEmployee = this.updateEmployee.bind(this);
        this.findEmployeeByIdentity = this.findEmployeeByIdentity.bind(this);
        this.deleteEmployee = this.deleteEmployee.bind(this);
        this.deleteEmployeeByIdentity = this.deleteEmployeeByIdentity.bind(this);
        this.removeEmployeeByIdentity = this.removeEmployeeByIdentity.bind(this);
        this.findAllEmployees = this.findAllEmployees.bind(this);
        this.dragover = this.dragover.bind(this);
        this.populatePhotoIfNull = this.populatePhotoIfNull.bind(this);
        this.processPhoto = this.processPhoto.bind(this);
        this.selectRow = this.selectRow.bind(this);
        this.i18n = this.i18n.bind(this);
    }

    i18n() {
        $(document).i18n();
    }

    changeLngTr() {
        this.changeLng('tr');
    }

    changeLngEn() {
        this.changeLng('en');
    }

    changeLng(lng) {
        i18n.setLng(lng, () => {
            $(document).i18n();
            knockoutLocalize(lng);
            this.employee.validate();
        });
    }

    insertFile(e, data) {
        e.preventDefault();
        var files = e.target.files || e.originalEvent.dataTransfer.files;
        var reader = new FileReader();
        reader.readAsDataURL(files[0]);
        reader.onload = (event) => {
            this.fileData().dataUrl(event.target.result);
        };
    };

    dragover(e) {
        e.preventDefault();
    };

    findEmployeeByIdentity() {
        $.ajax({
            method: "GET",
            url: AppConfig.URL + "/employees/" + this.employee.identity(),
            cache: false,
            success: (emp) => {
                this.processPhoto(emp);
                this.employee.update(emp);
                toastr.success(i18n.t('employeeRetrieved'));
            }, error: this.handleError
        });
    }

    selectRow(emp) {
        this.employee.update(emp);
        this.fileData().dataUrl(emp.photo);
    }

    removeEmployeeByIdentity(identity) {
        $.ajax({
            method: "DELETE",
            url: AppConfig.URL + "/employees/" + identity,
            success: (emp) => {
                this.employee.update(emp);
                if (emp === undefined)
                    this.findAllEmployees();
                else {
                    const notDeleted =
                        e => e.identity.localeCompare(identity) != 0;
                    let emps = this.employees().filter(notDeleted);
                    this.employees(emps);
                }
                toastr.success(i18n.t('employeeDeleted'));
            }, error: this.handleError
        });
    }

    deleteEmployee(emp) {
        this.removeEmployeeByIdentity(emp.identity);
    }

    deleteEmployeeByIdentity() {
        this.removeEmployeeByIdentity(this.employee.identity());
    }

    processPhoto(emp) {
        if (emp.hasOwnProperty('photo')) {
            if (emp.photo == null)
                emp.photo = AppConfig.NO_IMAGE;
            this.fileData().dataUrl(emp.photo);
        }
    }

    addEmployee() {
        this.employee.photo(this.fileData().dataUrl());
        $.ajax({
            method: "POST",
            url: AppConfig.URL + "/employees",
            data: this.employee.getJson(),
            contentType: "application/json",
            success: (emp) => {
                this.processPhoto(emp);
                this.employee.update(emp);
                this.findAllEmployees();
                toastr.success(i18n.t('employeeAdded'));
            }, error: this.handleError
        });
    }

    updateEmployee() {
        this.employee.photo(this.fileData().dataUrl());
        $.ajax({
            method: "PUT",
            url: AppConfig.URL + "/employees/"+this.employee.identity(),
            data: this.employee.getJson(),
            contentType: "application/json",
            success: (emp) => {
                this.findAllEmployees();
                toastr.success(i18n.t('employeeUpdated'));
            }, error: this.handleError
        });
    }

    findAllEmployees() {
        $.ajax({
            method: "GET",
            url: AppConfig.URL + "/employees",
            cache: false,
            success: (employees) => {
                let emps = JSON.parse(employees);
                for(let emp of emps)
                    emp["_id"] = emp["identity"]
                this.populatePhotoIfNull(emps);
                this.employees(emps);
                this.i18n();
                toastr.info(i18n.t('employeesRetrieved'));
            }, error: this.handleError
        });
    }

    populatePhotoIfNull(employees) {
        for (let i in employees) {
            const emp = employees[i];
            if (emp.hasOwnProperty('photo'))
                if (emp.photo == null)
                    emp.photo = AppConfig.NO_IMAGE;
                if (!emp.photo.startsWith("data:image"))
                    emp.photo=toSrcImage(emp.photo);
        }
    }
};

$(document).ready(function () {
    initializeToastr({
        timeOut: 3000,
        closeDuration: 500,
        closeEasing: 'swing',
        progressBar: true,
        preventDuplicates: true,
        closeButton: true,
        positionClass: 'toast-top-center'

    });

    i18n.init({
        lng: "en",
        resGetPath: "resources/__ns__-__lng__.json",
        fallbackLng: "en"
    }, (t) => {
        $(document).i18n();
        knockoutLocalize('en');
        ko.validation.init({
            decorateElement: true,
            decorateInputElement: true,
            insertMessages: true,
            errorElementClass: 'has-warning',
            errorMessageClass: 'has-error'
        }, true);
        ko.applyBindings(new HRViewModel());
    })
});
