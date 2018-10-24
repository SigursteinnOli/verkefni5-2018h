#Sigursteinn Óli Þorsteinsson
#19/09/18
#Verkefni 4

from sys import argv
from bottle import *
#import os

@route("/")
def index():
    return template ("index.tpl")

@post("/data")
def gogn():
    n = request.forms.get("nafn")
    h = request.forms.get("heimilisfang")
    e = request.forms.get("email")
    s = request.forms.get("símanúmer")
    m = request.forms.get("matur")
    nam = request.forms.getall("namsk")

    sum = 0
    for i in nam:
        sum += 3000

    sum = sum
    sumMVsk = 1.25*sum

    return template("namskeid",n=n,h=h,e=e,s=s,m=m,nam=nam,sub=sum,total=sumMVsk)








@route("/static/<skra>")
def static_skra(skra):
    return static_file(skra, root="./static")

@error(404)
def villa(error):
    return "<h1 style = color:red>Þessi síða finnst ekki</h1>"


#run(host="localhost", port =8080, reloader=True, debug=True)
run(host='0.0.0.0', port=os.environ.get('PORT'))


