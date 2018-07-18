//= require bootstrap-sprockets
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require autocomplete-rails
//= require turbolinks

// $("#quote_characters_list").keypress(function(){
//     $.ajax({
//         url : "characters/search?q=".$('#quote_characters_list'),
//         type : 'GET',
//         dataType : 'html',
//         success : function(code_html, statut){
//             $(#characters).html(code_html);
//         },
//         error : function(resultat, statut, erreur){
//         },
//         complete : function(resultat, statut){
//         }
//     });
// });


$("#quote_characters_list").click(function(){
    $('#characters').html("Hi !")
});
