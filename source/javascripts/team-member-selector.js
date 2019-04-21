$('#team-member-1-info').hide();
$('#team-member-2-info').hide();
$('#team-member-3-info').hide();
$('#team-member-4-info').hide();
$('#team-member-5-info').hide();
$('#team-member-6-info').hide();

$("#team-member-1").click(function(){
    $("#team-member-1-info").show();
  }); 

$(function() {
    $('#team-member-1').hover(function() { 
        $('#team-member-1-info').show();
    }, function() { 
        $('#team-member-1-info').hide();
    });
});

$(function() {
    $('#team-member-2').hover(function() { 
        $('#team-member-2-info').show();
    }, function() { 
        $('#team-member-2-info').hide();
    });
});

$(function() {
    $('#team-member-3').hover(function() { 
        $('#team-member-3-info').show();
    }, function() { 
        $('#team-member-3-info').hide();
    });
});

$(function() {
    $('#team-member-4').hover(function() { 
        $('#team-member-4-info').show();
    }, function() { 
        $('#team-member-4-info').hide();
    });
});

$(function() {
    $('#team-member-5').hover(function() { 
        $('#team-member-5-info').show();
    }, function() { 
        $('#team-member-5-info').hide();
    });
});

$(function() {
    $('#team-member-6').hover(function() { 
        $('#team-member-6-info').show();
    }, function() { 
        $('#team-member-6-info').hide();
    });
});