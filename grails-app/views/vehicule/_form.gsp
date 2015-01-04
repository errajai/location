<%@ page import="location.Vehicule" %>



<div class="fieldcontain ${hasErrors(bean: vehiculeInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="vehicule.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${vehiculeInstance.constraints.type.inList}" required="" value="${vehiculeInstance?.type}" valueMessagePrefix="vehicule.type"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculeInstance, field: 'carburant', 'error')} required">
	<label for="carburant">
		<g:message code="vehicule.carburant.label" default="Carburant" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="carburant" required="" value="${vehiculeInstance?.carburant}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculeInstance, field: 'coleur', 'error')} required">
	<label for="coleur">
		<g:message code="vehicule.coleur.label" default="Coleur" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="coleur" required="" value="${vehiculeInstance?.coleur}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculeInstance, field: 'kilometrage', 'error')} required">
	<label for="kilometrage">
		<g:message code="vehicule.kilometrage.label" default="Kilometrage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="kilometrage" type="number" value="${vehiculeInstance.kilometrage}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculeInstance, field: 'marque', 'error')} required">
	<label for="marque">
		<g:message code="vehicule.marque.label" default="Marque" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="marque" required="" value="${vehiculeInstance?.marque}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculeInstance, field: 'matricule', 'error')} required">
	<label for="matricule">
		<g:message code="vehicule.matricule.label" default="Matricule" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="matricule" required="" value="${vehiculeInstance?.matricule}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculeInstance, field: 'nbrPlace', 'error')} required">
	<label for="nbrPlace">
		<g:message code="vehicule.nbrPlace.label" default="Nbr Place" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nbrPlace" type="number" value="${vehiculeInstance.nbrPlace}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: vehiculeInstance, field: 'reservations', 'error')} ">
	<label for="reservations">
		<g:message code="vehicule.reservations.label" default="Reservations" />
		
	</label>
	<g:select name="reservations" from="${location.Reservation.list()}" multiple="multiple" optionKey="id" size="5" value="${vehiculeInstance?.reservations*.id}" class="many-to-many"/>

</div>

