<%@ page import="location.Reservation" %>



<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="reservation.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${reservationInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: reservationInstance, field: 'duree', 'error')} required">
	<label for="duree">
		<g:message code="reservation.duree.label" default="Duree" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="duree" type="number" value="${reservationInstance.duree}" required=""/>

</div>

