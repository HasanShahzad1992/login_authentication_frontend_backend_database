from django.shortcuts import render
import json
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
# from django.contrib.auth.models import User
# from django.contrib.auth.models import User
# from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login
# from models import User

from rest_framework.decorators import authentication_classes


@csrf_exempt

def sign_up(initial_request_from_front_end):
    original_dictionary=json.loads(initial_request_from_front_end.body)
    username_from_dictionary=original_dictionary["username"]
    email_from_dictionary=original_dictionary["email"]
    password_from_dictionary=original_dictionary["password"]

    filtered_response_for_username=User.objects.filter(username=username_from_dictionary)
    filtered_response_for_email=User.objects.filter(email=email_from_dictionary)
    filtered_response_for_password=User.objects.filter(password=password_from_dictionary)

    if len(filtered_response_for_username)==0 and len(filtered_response_for_email)!=0:
        return JsonResponse({"error":"this email is already in use, please try a new email"})
    elif len(filtered_response_for_username)!=0 and len(filtered_response_for_email)==0:
        return JsonResponse({"error":"this username is already in use, please try a new username"})
    elif len(filtered_response_for_username)!=0 and len(filtered_response_for_email)!=0:
        return JsonResponse({"error":"this username and email are both in use, please try a new username and email"})
    else:
        user=User.objects.create_user(username=username_from_dictionary,email=email_from_dictionary,password=password_from_dictionary)
        value_of_dictionary="sign up was successful"
        return JsonResponse({"message": value_of_dictionary})






@csrf_exempt
def login_controller(initial_request_from_front_end):
    original_dicitionary=json.loads(initial_request_from_front_end.body)
    username_from_front_end=original_dicitionary["username"]
    password_from_front_end=original_dicitionary["password"]
    authenticated_user_object=authenticate(initial_request_from_front_end,username=username_from_front_end,password=password_from_front_end)

    if authenticated_user_object!=None:
        login(initial_request_from_front_end,authenticated_user_object)
        return JsonResponse({"message":"you have logged in successfully"})
    else:
        return JsonResponse({"message":"invalid credentials"})





