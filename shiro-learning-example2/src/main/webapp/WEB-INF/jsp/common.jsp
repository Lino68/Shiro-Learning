<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<span>
<shiro:authenticated>
	<shiro:hasPermission name="admin:res:list">
	<a href="<%=request.getContextPath() %>/admin/res/list" class="admin_link">资源管理</a>
	</shiro:hasPermission>
	<shiro:hasPermission name="admin:role:list">
	<a href="<%=request.getContextPath() %>/admin/role/list" class="admin_link">角色管理</a>
	</shiro:hasPermission>
	<shiro:hasPermission name="admin:user:list">
	<a href="<%=request.getContextPath() %>/admin/user/list" class="admin_link">用户管理</a>
	</shiro:hasPermission>
	 Hello: <span style="color: aqua"><shiro:principal property="nickname"/></span>
	<a href="<%=request.getContextPath() %>/logout">退出系统</a>
</shiro:authenticated>
<shiro:guest>
	<a href="<%=request.getContextPath() %>/login">登录系统</a>
</shiro:guest>
</span>
<hr/>