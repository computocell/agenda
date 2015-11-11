<%@ attribute name="classe" required="true" %>
<script type="text/javascript">
    $(function () {
        var options = new Array();
        options['language'] = 'pt-BR';
        options['format'] = 'dd/mm/yyyy';
        options['autoclose'] = 'true';
        $('.${classe}').datepicker(options);
    })
</script>