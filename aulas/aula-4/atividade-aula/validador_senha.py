import re

def verify_password(password):

    if len(password) < 8:
        return False    
    minusculo = r"[a-z]"
    if not re.search(minusculo, password):
       return False
    maiusculo = r"[A-Z]"
    if not re.search(maiusculo, password):
        return False
    numeros = r"[0-9]"
    if not re.search(numeros, password):
        return False
    
    
    


    