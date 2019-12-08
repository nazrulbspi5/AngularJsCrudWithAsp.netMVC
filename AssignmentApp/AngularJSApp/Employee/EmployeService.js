(function () {
    'use strict';

    angular
        .module('app')
        .factory('EmployeService', ['$http', function ($http) {
            var service = {}; 
            //Get all employee
            service.getEmployee = function () {
                return $http.get("/Employee/Index");
            }
            //Get Single Employee by id
            service.getEmployeeById = function (id) {
                return $http.get('/Employee/Details/' + id);                
            };
            //Save employe to database
            service.addEmployee = function (employee) {
                var request = $http({ method: 'post', url: '/Employee/Insert', data: employee });
                return request;
            };
            //Edit employe
            service.editEmployee = function (employee) {
                var request = $http({ method: 'post', url: '/Employee/Edit', data: employee });
                return request;
            };
            //Delete employee by id
            service.deleteEmployee = function (id) {               
                return $http.post('/Employee/Delete', { id: id })                
            };
            service.deleteMultipleEmployee = function (employees) {
                var itemList = [];
                angular.forEach(employees, function (value, key) {
                    if (employees[key].selected) {
                        itemList.push(employees[key].selected);
                    }
                });
                return $http.post("/Employee/DeleteMultipleEmployee", itemList);
            };

            return service;
        }]);


})();