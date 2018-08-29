$(document).ready(function(){

    $(document).on("shown.bs.modal", "#new-detail-modal", function() {


        var items_suggested = new Bloodhound({
          datumTokenizer: Bloodhound.tokenizers.obj.whitespace("description"),
          queryTokenizer: Bloodhound.tokenizers.whitespace,
          prefetch: window.location.origin + '/items_suggestion',
          remote: {
            url: window.location.origin + '/items_suggestion?query=%QUERY',
            wildcard: '%QUERY'
          }
        });

        $('#sale_details_producto').typeahead({
              hint: true,
              highlight: true,
              minLength: 1
        },
        {
          displayKey: 'prod_descrip',
          source: items_suggested,
          templates: {
            suggestion: function (producto) {
                return '<p>' + producto.prod_descrip + '</p>';
            }
          }
        });

        $('#sale_details_producto').focus();

        $('#sale_details_producto').typeahead('val', $('#sale_details_producto_prod_descrip').val() );

        $('#sale_details_producto').on('typeahead:select', function(object, datum){
            $('#sale_details_producto').val(datum.id);
            $('#sale_details_cantidad').focus();
            subtotal();
        });

        $('#sale_details_producto').on('typeahead:change', function(event, data){
            $('#sale_details_producto').val(data);
        });

        $('#sale_details_producto').on('blur', function() {
            data = $('#sale_details_producto').val();
            url = '/validate_suggested_item';
            $.ajax({
                url: url,
                data: { prod_descrip: data },
                success: function(res){
                    if (res["0"].valid == false){
                        // Item no válido
                        $('#sale_details_producto').css('border-color', 'red');
                    }else{
                        // Item correcto
                        $('#sale_details_producto_id').val(res["0"].id.toString());
                        $('#sale_details_precio').val(res["0"].price.toString());
                        $('#sale_details_producto').css('border-color', '#ccc');
                        subtotal();
                    }
                }
            });
        });

        function subtotal() {
            $('#sale_details_subtotal').val($('#sale_details_cantidad').val() * $('#sale_details_precio').val());
        };

        $('#sale_details_cantidad').blur(function(){
             subtotal();
        });

        $('#sale_details_precio').blur(function(){
             subtotal();
        });

    });
});