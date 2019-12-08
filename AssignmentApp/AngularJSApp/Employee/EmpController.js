(function () {
    'use strict';

    angular
        .module('app')
        .controller('EmpController', ['$scope', 'EmployeService', function ($scope, EmployeService) {
            $scope.employees = [];
            $scope.currentPage = 1;
            $scope.itemPerPage = 5;
            //Get All employee
            getAllEmployee();
            function getAllEmployee() {
                EmployeService.getEmployee().then(function (result) {
                    $scope.employees = result.data;
                });
            }
            //Delete employee by id
            $scope.deleteEmployee = function (id) {
                EmployeService.deleteEmployee(id).then(function () {
                    toastr.success('Employee delete successfully.');
                    getAllEmployee();
                });
            };
            //Delete Multiple employee
            $scope.DeleteEmployee = function (employees) {
                EmployeService.deleteMultipleEmployee(employees).then(function () {
                    toastr.success('Employee delete successfully.');
                    getAllEmployee();
                }, function () {
                    toastr.error('Employee delete failed.');
                });
            };
           

        }])
        .controller('employeeAddCtr', ['$scope', '$location', 'EmployeService', function ($scope, $location, EmployeService) {
            //Save employee to database
            $scope.createEmployee = function (employee) {
                EmployeService.addEmployee(employee).then(function () {
                    toastr.success('Employee Save Successfully.');
                    $location.path('/');
                }, function () {
                    toastr.error('Employee saved failed.');
                });

            };

        }])
        .controller('employeeEditCtr', ['$scope', '$routeParams', '$location', 'EmployeService', function ($scope, $routeParams, $location, EmployeService) {
            $scope.employees = [];
            //Get employee by id
            EmployeService.getEmployeeById($routeParams.id).then(function (result) {
                $scope.employees = result.data;
                $scope.EmpId = employees.EmpId;
                $scope.EmpName = employees.EmpName;
                $scope.Email = employees.Email;
                $scope.Address = employees.Address;
                $scope.Phone = employees.Phone;
            },
                function () {
                    toastr.error('Error in factching user with id:' + $routeParams.id);
                });

            //Update employee
            $scope.updateEmployee = function (employee) {
                EmployeService.editEmployee(employee).then(function () {
                    toastr.success('Employee Update Successfully.');
                    $location.path('/');
                }, function () {
                    toastr.error('Employee Update Failed.');
                });
            };
        }])


})();
