"""
URL configuration for first_fullstack_project project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from first_application import views as first_app_views
from country_city_school_information import views as country_city_school_information_views
from result_check import views as result_check_views
from judiciary_cause_list_api import views as check_judiciary_case_dates
from login_authentication_system_api import views as  login_signup_authentication_system_api




urlpatterns = [
    path('admin/', admin.site.urls),
    path("first_pipeline",country_city_school_information_views.view_function),
    path("receive_data",first_app_views.home),
    path("receive_result_candidate",result_check_views.result_check),

    path("request_from_front_end_judiciary_dates",check_judiciary_case_dates.check_case_details),
    path("request_from_front_end_signup_page",login_signup_authentication_system_api.sign_up),
    path("request_from_front_end_login_page",login_signup_authentication_system_api.login_controller)

   ]