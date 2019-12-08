var myapp;
(function () {
    myapp = angular.module('app', [
        'ngRoute',
        'ui.bootstrap'])
        .config(['$routeProvider', '$locationProvider', function ($routeProvider, $locationProvider) {
            $locationProvider.hashPrefix('');
            $routeProvider.when('/', {
                controller: 'EmpController',
                templateUrl: '/AngularJSApp/Employee/template/EmployeeList.html'
            }).
                when('/AddEmployee', {
                    controller: 'employeeAddCtr',
                    templateUrl: '/AngularJSApp/Employee/template/AddEmployee.html'
                }).
                when('/EditEmployee/:id', {
                    controller: 'employeeEditCtr',
                    templateUrl: '/AngularJSApp/Employee/template/EditEmployee.html'
                }).
                otherwise({ redirectTo: '/' });
        }]);
})();