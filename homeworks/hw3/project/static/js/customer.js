class Phone {
    #_countryCode;
    #_cityCode;
    #_number;
    #_type;

    constructor({countryCode, cityCode, number, type}) {
        this.#_countryCode = ko.observable(countryCode);
        this.#_cityCode = ko.observable(cityCode);
        this.#_number = ko.observable(number);
        this.#_type = ko.observable(type);
    }

    get countryCode() {
        return this.#_countryCode;
    }

    get cityCode() {
        return this.#_cityCode;
    }

    get number() {
        return this.#_number;
    }

    get type() {
        return this.#_type;
    }

}

class Customer {
    #_id;
    #_email;
    #_firstName;
    #_lastName;
    #_photo;
    #_phones;
    #_birthYear;

    constructor({id, email, firstName, lastName, birthYear, photo, phones}) {
        this.#_id = ko.observable(id);
        this.#_email = ko.observable(email);
        this.#_firstName = ko.observable(firstName);
        this.#_lastName = ko.observable(lastName);
        this.#_birthYear = ko.observable(birthYear);
        this.#_photo = ko.observable(photo);
        this.#_phones = ko.observableArray(phones);
    }

    toJSON = () => {
        return JSON.stringify({
            _id: this.id(),
            firstName: this.firstName(),
            lastName: this.lastName(),
            photo: this.photo(),
            email: this.email(),
            birthYear: this.birthYear(),
            phones: this.phones(),
        });
    }

    get id() {
        return this.#_id;
    }

    get email() {
        return this.#_email;
    }

    get firstName() {
        return this.#_firstName;
    }

    get lastName() {
        return this.#_lastName;
    }

    get birthYear() {
        return this.#_birthYear;
    }


    get photo() {
        return this.#_photo;
    }

    get phones() {
        return this.#_phones;
    }

    update = (customer) => {
        this.id(customer._id);
        this.firstName(customer.firstName);
        this.lastName(customer.lastName);
        this.email(customer.email);
        this.photo(customer.phone);
        this.phones(customer.phones);
    }
}