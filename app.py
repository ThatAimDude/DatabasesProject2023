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




if __name__ == "__main__":
    import uvicorn
    uvicorn.run('app:app', reload=True)


