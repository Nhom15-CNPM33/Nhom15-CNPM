<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<table class="table table-data2" id="tbldata">
    <thead>
        <tr>
            <th class="cen"></th>
            <th class="cen">Username</th>
            <th class="cen">email</th>
            <th class="cen">Fullname</th>
            <th class="cen">Role</th>
            <th class="cen">Phone</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${users}" var="user">
        <tr class="tr-shadow">
            <td>
                <label class="au-checkbox">
                    <input type="checkbox" value=${user.getId()} class="user-id">
                    <span class="au-checkmark"></span>
                </label>
            </td>

            <td class="cen">${user.getUserName()}</td>

            <td class="cen">
                <span class="block-email">${user.getEmail()}</span>
            </td>

            <td class="desc cen">${user.getFullName()}</td>

            <td class="cen">
                <span class="status--process">${user.getRole().getName()}</span>
            </td>

            <td class="cen">${user.getPhone()}</td>

            <td>
                <div class="table-data-feature">
                    <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                        <i class="zmdi zmdi-edit"></i>
                    </button>
                    <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                        <i class="zmdi zmdi-delete"></i>
                    </button>
                    <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                        <i class="zmdi zmdi-more"></i>
                    </button>
                </div>
            </td>
        </tr>                                  
        <tr class="spacer"></tr>
    </c:forEach>
    </tbody>
</table>