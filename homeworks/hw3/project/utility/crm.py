def extract_customer_from_request(request, fields):
    emp = {}
    for field in fields:
        if field in request.json:
            emp[field] = request.json[field]
    if "identity" in emp:
        emp["_id"] = emp["identity"]
    return emp
