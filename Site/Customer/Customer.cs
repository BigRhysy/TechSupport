using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TechSupportApp.Site.Customer
{
    public class Customer
    {
        private string custName;
        private string custAddress;
        private string custCity;
        private string custState;
        private string custEmail;
        private int custZip;
        private int custPhone;
        private int custID;
        public Customer()
        {
            custName = "";
            custAddress = "";
            custCity = "";
            custState = "";
            custEmail = "";
            custZip = 0;
            custPhone = 0;
        }

        public void setCustomer(string _custName, string _custAddress, string _custCity, string _custState, int _custZip, string _custEmail, int _custPhone)
        {
            custName = _custName;
            custAddress = _custAddress;
            custCity = _custCity;
            custState = _custState;
            custEmail = _custEmail;
            custZip = _custZip;
            custPhone = _custPhone;
        }

        public string getCustName()
        {
            return custName;
        }
        public string getCustAddress()
        {
            return custAddress;
        }

        public string getCustCity()
        {
            return custCity;
        }
        public string getCustState()
        {
            return custState;
        }

        public int getCustZip()
        {
            return custZip;
        }

        public string getCustEmail()
        {
            return custEmail;
        }

        public int getCustPhone()
        {
            return custPhone;
        }
    }
}