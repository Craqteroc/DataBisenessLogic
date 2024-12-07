﻿using Microsoft.Analytics.Interfaces;
using Microsoft.Analytics.Interfaces.Streaming;
using Microsoft.Analytics.Types.Sql;
using Microsoft.Analytics.UnitTest;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace UnitTestValidate
{
    [TestClass]
    public class UnitTest1
    {
        public UnitTest1()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        private TestContext testContextInstance;
        private List<ValidationResult> _validationResults;
        private ValidationContext _validationContext;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        //
        // You can use the following additional attributes as you write your tests:
        //
        // Use ClassInitialize to run code before running the first test in the class
        // [ClassInitialize()]
        // public static void MyClassInitialize(TestContext testContext) { }
        //
        // Use ClassCleanup to run code after all tests in a class have run
        // [ClassCleanup()]
        // public static void MyClassCleanup() { }
        //
        // Use TestInitialize to run code before running each test 
        // [TestInitialize()]
        // public void MyTestInitialize() { }
        //
        // Use TestCleanup to run code after each test has run
        // [TestCleanup()]
        // public void MyTestCleanup() { }
        //
        #endregion

        [TestMethod]
        public void TestMethod1()
        {
            var client = new Client { ClientName = null, Phone = "1234567" };
            _validationResults = new List<ValidationResult>();
            _validationContext = new ValidationContext(client);

            // Act
            bool isValid = Validator.TryValidateObject(client, _validationContext, _validationResults, true);

            // Assert
            Assert.IsFalse(isValid);
            Assert.AreEqual(1, _validationResults.Count);
            Assert.AreEqual("Имя обязательно для заполнения.", _validationResults[0].ErrorMessage);
        }

        [TestMethod]
        public void ClientName_Required_Should_Return_Error_When_Empty()
        {
            // Arrange
            var client = new Client { ClientName = null, Phone = "1234567" };
            _validationResults = new List<ValidationResult>();
            _validationContext = new ValidationContext(client);

            // Act
            bool isValid = Validator.TryValidateObject(client, _validationContext, _validationResults, true);

            // Assert
            Assert.IsFalse(isValid);
            Assert.AreEqual(1, _validationResults.Count);
            Assert.AreEqual("Имя обязательно для заполнения.", _validationResults[0].ErrorMessage);
        }

        [TestMethod]
        public void Phone_Required_Should_Return_Error_When_Empty()
        {
            // Arrange
            var client = new Client { ClientName = "John Doe", Phone = null };
            _validationResults = new List<ValidationResult>();
            _validationContext = new ValidationContext(client);

            // Act
            bool isValid = Validator.TryValidateObject(client, _validationContext, _validationResults, true);

            // Assert
            Assert.IsFalse(isValid);
            Assert.AreEqual(1, _validationResults.Count);
            Assert.AreEqual("Телефон обязателен для заполнения.", _validationResults[0].ErrorMessage);
        }

        [TestMethod]
        public void Phone_Length_Should_Return_Error_When_Less_Than_Minimum()
        {
            // Arrange
            var client = new Client { ClientName = "John Doe", Phone = "12345" }; // меньше 6
            _validationResults = new List<ValidationResult>();
            _validationContext = new ValidationContext(client);

            // Act
            bool isValid = Validator.TryValidateObject(client, _validationContext, _validationResults, true);

            // Assert
            Assert.IsFalse(isValid);
            Assert.AreEqual(1, _validationResults.Count);
            Assert.AreEqual("Введите колличество не менее 6", _validationResults[0].ErrorMessage);
        }

        [TestMethod]
        public void Valid_Client_Should_Not_Return_Any_Error()
        {
            // Arrange
            var client = new Client { ClientName = "John Doe", Phone = "1234567" };
            _validationResults = new List<ValidationResult>();
            _validationContext = new ValidationContext(client);

            // Act
            bool isValid = Validator.TryValidateObject(client, _validationContext, _validationResults, true);

            // Assert
        }
    }
}
