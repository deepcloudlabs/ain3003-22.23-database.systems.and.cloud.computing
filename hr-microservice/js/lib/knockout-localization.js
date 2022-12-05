function knockoutLocalize(lang) {
    if(ko.validation === undefined)
    {
        throw("knockoutLocalize > ko.validation is UNDEFINED");
    }
    
    if (lang === "tr") {
        ko.validation.localize({
            required: 'Bu alanın doldurulması zorunludur.',
            min: 'Lütfen {0} veya daha yüksek değer giriniz.',
            max: 'Lütfen {0} veya daha düşük değer giriniz.',
            minLength: 'Lütfen en az {0} karakter giriniz.',
            maxLength: 'Lütfen en fazla {0} karakter giriniz.',
            pattern: 'Lütfen bu alanı kontrol ediniz.',
            step: 'Değer {0} arttırılmalı.',
            email: 'Bu geçerli bir e-posta adresi değil.',
            date: 'Lütfen geçerli bir tarih giriniz.',
            dateISO: 'Lütfen geçerli bir tarih giriniz.',
            number: 'Lütfen bir sayı değeri giriniz.',
            digit: 'Lütfen bir rakam değeri giriniz.',
            phoneUS: 'Lütfen geçerli bir telefon numarası giriniz.',
            equal: 'Değerler eşit olmalıdır.',
            notEqual: 'Lütfen farklı bir değer seçiniz.',
            unique: 'Lütfen değerin farklı olduğunu kontrol ediniz.'
        });
    } else {
        ko.validation.localize({
            required: 'This field is required.',
            min: 'Please enter a value greater than or equal to {0}.',
            max: 'Please enter a value less than or equal to {0}.',
            minLength: 'Please enter at least {0} characters.',
            maxLength: 'Please enter no more than {0} characters.',
            pattern: 'Please check this value.',
            step: 'The value must increment by {0}',
            email: 'This is not a proper e-mail address',
            date: 'Please enter a proper date',
            dateISO: 'Please enter a proper date',
            number: 'Please enter a number',
            digit: 'Please enter a digit',
            phoneUS: 'Please specify a valid phone number',
            equal: 'Values must equal',
            notEqual: 'Please choose another value.',
            unique: 'Please make sure the value is unique.'
        });
    }
}