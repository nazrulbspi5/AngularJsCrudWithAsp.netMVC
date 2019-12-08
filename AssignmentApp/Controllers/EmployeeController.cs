using AssignmentApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace AssignmentApp.Controllers
{
    public class EmployeeController : Controller
    {
        AssignmentDBEntities _db = new AssignmentDBEntities();
        // GET: all Employee 
        public JsonResult Index()
        {
            var emplist = _db.Employees.ToList().OrderByDescending(c=>c.EmpID);

            return Json(emplist, JsonRequestBehavior.AllowGet);
        }
        //Get Details
        public JsonResult Details(int id)
        {
            var employee = _db.Employees.Find(id);
            return Json(employee, JsonRequestBehavior.AllowGet);
        }

        //Insert Post Action Method
        [HttpPost]
        public JsonResult Insert(Employee employee)
        {
            if (ModelState.IsValid)
            {
                _db.Employees.Add(employee);
                _db.SaveChanges();             
            }
            return Json(null);

        }
        //Edit Post Action Method
        [HttpPost]
        public JsonResult Edit(Employee employee)
        {

            if (ModelState.IsValid)
            {                
                _db.Entry(employee).State = System.Data.Entity.EntityState.Modified;
                _db.SaveChanges();
            }
            return Json(null);

        }
        //Edit Post Action Method
        [HttpPost]
        public JsonResult Delete(int id)
        {
            var employee = (from c in _db.Employees where c.EmpID == id select c).FirstOrDefault();
            _db.Employees.Remove(employee);
            _db.SaveChanges();
            return Json(null);

        }
        //Delete multiple employee   
        [HttpPost]
        public JsonResult DeleteMultipleEmployee(int[] itemsSelected)
        {

            if (itemsSelected == null)
            {
                return Json(null);
            }
            else
            {
                for (int i = 0; i < itemsSelected.Length; i++)
                {
                    var employee = _db.Employees.Find(itemsSelected[i]);

                    _db.Employees.Remove(employee);

                }
                _db.SaveChanges();
                return Json(null);
            }


        }
    }
}