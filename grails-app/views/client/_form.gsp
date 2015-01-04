<%@ page import="location.Client" %>



<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'typePermis', 'error')} required">
	<label for="typePermis">
		<g:message code="client.typePermis.label" default="Type Permis" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="typePermis" from="${clientInstance.constraints.typePermis.inList}" required="" value="${clientInstance?.typePermis}" valueMessagePrefix="client.typePermis"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'cin', 'error')} required">
	<label for="cin">
		<g:message code="client.cin.label" default="Cin" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cin" required="" value="${clientInstance?.cin}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="client.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${clientInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'prenom', 'error')} required">
	<label for="prenom">
		<g:message code="client.prenom.label" default="Prenom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="prenom" required="" value="${clientInstance?.prenom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientInstance, field: 'reservations', 'error')} ">
	<label for="reservations">
		<g:message code="client.reservations.label" default="Reservations" />
		
	</label>
	<g:select name="reservations" from="${location.Reservation.list()}" multiple="multiple" optionKey="id" size="5" value="${clientInstance?.reservations*.id}" class="many-to-many"/>

</div>

