class CrmViewModel {
    #_customer;
    #_fileData;
    #_customers;

    constructor() {
        this.#_customer = new Customer({
            id: "74577790220",
            firstName: "jack",
            lastName: "bauer",
            email: "jack.bauer@example.com",
            birthYear: 1986,
            photo: AppConfig.NO_IMAGE,
            phones: []
        });
        this.#_customers = ko.observableArray([]);
        this.#_fileData = ko.observable({
            dataUrl: ko.observable(AppConfig.NO_IMAGE)
        });
        const client = io.connect("http://localhost:8100");
        client.on("connect", () => {
            console.log("Connected to the server");
            client.on("customer-events", (event) => {
                switch (event.eventType) {
                    case "CUSTOMER_ACQUIRED":
                        this.customers.push(event.eventData);
                        break;
                    case "CUSTOMER_RELEASED":
                        const emp = event.eventData;
                        this.customers(this.customers().filter(c => c._id != emp._id));
                        break;
                }
            });
        });
    }

    get customers() {
        return this.#_customers;
    }

    addPhone = () => {
        this.customer.phones.push(new Phone({countryCode: "", cityCode: "", number: "", type: "HOME"}))
    }

    retrieveAllCustomers = () => {
        fetch(`${AppConfig.REST_API_BASE_URL}/customers?photo=true`, {
            method: "GET",
            headers: {
                "Accept": "application/json"
            }
        }).then(res => res.json())
            .then(customers => this.customers(customers))
    }
    copyCustomerAtRow = (customerAtRow) => {
        this.#_customer.update(customerAtRow);
        this.#_fileData().dataUrl(customerAtRow.photo);
    }

    removePhone = (phoneAtRow) => {
        this.#_customer.phones(this.#_customer.phones().filter(p=>p.number!=phoneAtRow.number));
        this.#_fileData().dataUrl(customerAtRow.photo);
    }

    retrieveCustomer = () => {
        fetch(`${AppConfig.REST_API_BASE_URL}/customers/${this.#_customer.id()}?photo=true`, {
            method: "GET",
            headers: {
                "Accept": "application/json"
            }
        }).then(res => res.json())
            .then(cust => {
                this.#_customer.update(cust);
                this.#_fileData().dataUrl(cust.photo);
            })
    }

    removeCustomer = () => {
        fetch(`${AppConfig.REST_API_BASE_URL}/customers/${this.#_customer.id()}`, {
            method: "DELETE",
            headers: {
                "Accept": "application/json"
            }
        }).then(res => res.json())
            .then(cust => {
                this.#_customer.update(cust);
                this.#_fileData().dataUrl(cust.photo);
            })
    }

    removeCustomerByRow = (customerAtRow) => {
        fetch(`${AppConfig.REST_API_BASE_URL}/customers/${customerAtRow._id}`, {
            method: "DELETE",
            headers: {
                "Accept": "application/json"
            }
        }).then(res => res.json())
            .then(cust => {
                this.#_customer.update(cust);
                this.#_fileData().dataUrl(cust.photo);
                this.customers(this.customers().filter(c => c._id != cust._id));
            })
    }

    addCustomer = () => {
        this.#_customer.photo(this.#_fileData().dataUrl());
        fetch(`${AppConfig.REST_API_BASE_URL}/customers`, {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    "Accept": "application/json"
                },
                body: this.#_customer.toJSON()
            }
        ).then(res => res.json())
            .then(console.log)
    }

    updateCustomer = () => {
        this.#_customer.photo(this.#_fileData().dataUrl());
        fetch(`${AppConfig.REST_API_BASE_URL}/customers/${this.#_customer.id()}`, {
                method: "PUT",
                headers: {
                    "Content-Type": "application/json",
                    "Accept": "application/json"
                },
                body: this.#_customer.toJSON()
            }
        ).then(res => res.json())
            .then(this.retrieveAllCustomers)
    }

    get customer() {
        return this.#_customer;
    }

    get fileData() {
        return this.#_fileData;
    }
};