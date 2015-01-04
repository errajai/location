
<%@ page import="location.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-client" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list client">
			
				<g:if test="${clientInstance?.typePermis}">
				<li class="fieldcontain">
					<span id="typePermis-label" class="property-label"><g:message code="client.typePermis.label" default="Type Permis" /></span>
					
						<span class="property-value" aria-labelledby="typePermis-label"><g:fieldValue bean="${clientInstance}" field="typePermis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.cin}">
				<li class="fieldcontain">
					<span id="cin-label" class="property-label"><g:message code="client.cin.label" default="Cin" /></span>
					
						<span class="property-value" aria-labelledby="cin-label"><g:fieldValue bean="${clientInstance}" field="cin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="client.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${clientInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.prenom}">
				<li class="fieldcontain">
					<span id="prenom-label" class="property-label"><g:message code="client.prenom.label" default="Prenom" /></span>
					
						<span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${clientInstance}" field="prenom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clientInstance?.reservations}">
				<li class="fieldcontain">
					<span id="reservations-label" class="property-label"><g:message code="client.reservations.label" default="Reservations" /></span>
					
						<g:each in="${clientInstance.reservations}" var="r">
						<span class="property-value" aria-labelledby="reservations-label"><g:link controller="reservation" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
