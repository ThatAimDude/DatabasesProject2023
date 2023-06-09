from fastapi import FastAPI, Request
from fastapi.responses import RedirectResponse
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles
from db import DataBase


templates = Jinja2Templates(directory="templates")
app = FastAPI(title="project")
app.mount("/static", StaticFiles(directory="static"), name="static")




# @app.post('/test')
# async def test(request: Request):
#     form = await request.form()
#     status_code = form.get('tracking-code')
#     context = {"request": request, "status_code": status_code}
#     return templates.TemplateResponse("status.html", context)

@app.post('/test')
async def return_status(request: Request):
    form = await request.form()
    tracking_code = form.get('tracking-code')
    db = DataBase()
    status = db.return_status(tracking_code)

    if status is None or not any(s is not None for s in status):
        status = None

    context = {"request": request, "status_codes": status}
    return templates.TemplateResponse("status.html", context)




@app.get('/')
async def root(request: Request):
    data_items = "Something to do"
    return templates.TemplateResponse("index.html", {"request": request, "data": data_items})



@app.post('/')
async def root(request: Request):
    form = await request.form()
    db = DataBase()
    db.insert(form['new-item'])
    return RedirectResponse('/items', status_code=302)


@app.get('/items')
async def root(request: Request):
    db = DataBase()
    data = db.select_all_items()
    return templates.TemplateResponse("items.html", {"request": request, "data": data})



@app.get('/index.html')
async def index(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})

@app.get('/services.html')
async def services(request: Request):
    return templates.TemplateResponse("services.html", {"request": request})

@app.get('/pricing.html')
async def pricing(request: Request):
    return templates.TemplateResponse("pricing.html", {"request": request})

@app.get('/signUp.html')
async def signUp(request: Request):
    return templates.TemplateResponse("SignUp.html", {"request": request})

@app.get('/status.html')
async def signUp(request: Request):
    return templates.TemplateResponse("status.html", {"request": request})



@app.post('/signup')
async def signup(request: Request):
    form = await request.form()
    username = form.get('username')
    password = form.get('password')

    db = DataBase()
    db.insert_user_credentials(username, password)

    return RedirectResponse('/', status_code=302)



    
@app.get('/send_package.html')
async def send_package(request: Request):
    db = DataBase()
    cities = db.get_all_cities()  
    return templates.TemplateResponse("send_package.html", {"request": request, "cities": cities})



@app.post('/calculate-cost')
async def calculate_cost(request: Request):
    form = await request.form()
    send_from_city = form.get('send-from')
    send_to_city = form.get('send-to')

    if send_from_city and send_to_city:
        db = DataBase()
        cost = db.calculate_cost(send_from_city, send_to_city)
        context = {"request": request, "send_from_city": send_from_city, "send_to_city": send_to_city, "cost": cost, "cities": db.get_all_cities()}
        return templates.TemplateResponse("send_package.html", context)
    else:
        context = {"request": request, "cost": None, "cities": db.get_all_cities()}
        return templates.TemplateResponse("send_package.html", context)



if __name__ == "__main__":
    import uvicorn
    uvicorn.run('app:app', reload=True)


