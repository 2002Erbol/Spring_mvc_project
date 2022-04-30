<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <body>
        <h2> Dear Emlpoyee, Please enter your details</h2>
<br>
<br>
<br>
    <form:form action ="showDetails" modelAttribute="employee" method="get">

        Name<form:input path="name"/>
        <form:errors path="name"/>
        <br><br>
        surname<form:input path="surname"/>
        <form:errors path="surname"/>
        <br><br>
        Salary<form:input path="salary"/>
        <form:errors path="salary"/>
        <br><br>

        Department <form:select path="department">
       <form:options items="${employee.departments}"/>
    </form:select>
        <br><br>
<%--        Department <form:select path="department">--%>
<%--        <form:option value="Information Technology" label="IT"/>--%>
<%--        <form:option value="Human Resources" label="HR"/>--%>
<%--        <form:option value="Sales" label="Sales"/>--%>
<%--    <br><br>--%>
<%--    </form:select>--%>
        <br><br>
<%-- Код который находиться внизу считаеться как хардкорный вариант
но я использовал не хардкорный код а написание с помощью Джава--%>
<%--        Which car do you want?--%>
<%--        BMW <form:radiobutton path="carBrend" value="BMW"/>--%>
<%--        MB <form:radiobutton path="carBrend" value="Mersedes Benz"/>--%>
<%--        Audi <form:radiobutton path="carBrend" value="Audi"/>--%>

        Which car do you want?
        <form:radiobuttons path ="carBrand" items="${employee.carBrands}"/>
<br><br>
<%--        Foreign Language(s)--%>
<%--        EN <form:checkbox path="languages" value="English"/>--%>
<%--        DE <form:checkbox path="languages" value="Deutch"/>--%>
<%--        FR <form:checkbox path="languages" value="French"/>--%>
        Foreign Language(s)
        <form:checkboxes path="languages" items="${employee.languageList}"/>
<br><br>
      phoneNumber<form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
        <br><br>
      Email <form:input path="email"/>
        <form:errors path="email"/>

<br><br>
        <input type="submit" value="OK">

    </form:form>

    </body>

</html>