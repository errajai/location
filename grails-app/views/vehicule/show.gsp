
<%@ page import="location.Vehicule" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vehicule.label', default: 'Vehicule')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-vehicule" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-vehicule" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list vehicule">
			
				<g:if test="${vehiculeInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="vehicule.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${vehiculeInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculeInstance?.carburant}">
				<li class="fieldcontain">
					<span id="carburant-label" class="property-label"><g:message code="vehicule.carburant.label" default="Carburant" /></span>
					
						<span class="property-value" aria-labelledby="carburant-label"><g:fieldValue bean="${vehiculeInstance}" field="carburant"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculeInstance?.coleur}">
				<li class="fieldcontain">
					<span id="coleur-label" class="property-label"><g:message code="vehicule.coleur.label" default="Coleur" /></span>
					
						<span class="property-value" aria-labelledby="coleur-label"><g:fieldValue bean="${vehiculeInstance}" field="coleur"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculeInstance?.kilometrage}">
				<li class="fieldcontain">
					<span id="kilometrage-label" class="property-label"><g:message code="vehicule.kilometrage.label" default="Kilometrage" /></span>
					
						<span class="property-value" aria-labelledby="kilometrage-label"><g:fieldValue bean="${vehiculeInstance}" field="kilometrage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculeInstance?.marque}">
				<li class="fieldcontain">
					<span id="marque-label" class="property-label"><g:message code="vehicule.marque.label" default="Marque" /></span>
					
						<span class="property-value" aria-labelledby="marque-label"><g:fieldValue bean="${vehiculeInstance}" field="marque"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculeInstance?.matricule}">
				<li class="fieldcontain">
					<span id="matricule-label" class="property-label"><g:message code="vehicule.matricule.label" default="Matricule" /></span>
					
						<span class="property-value" aria-labelledby="matricule-label"><g:fieldValue bean="${vehiculeInstance}" field="matricule"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculeInstance?.nbrPlace}">
				<li class="fieldcontain">
					<span id="nbrPlace-label" class="property-label"><g:message code="vehicule.nbrPlace.label" default="Nbr Place" /></span>
					
						<span class="property-value" aria-labelledby="nbrPlace-label"><g:fieldValue bean="${vehiculeInstance}" field="nbrPlace"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${vehiculeInstance?.reservations}">
				<li class="fieldcontain">
					<span id="reservations-label" class="property-label"><g:message code="vehicule.reservations.label" default="Reservations" /></span>
					
						<g:each in="${vehiculeInstance.reservations}" var="r">
						<span class="property-value" aria-labelledby="reservations-label"><g:link controller="reservation" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:vehiculeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${vehiculeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        <g:link action="reservation" id="${vehiculeInstance.id}">Reserver</g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
