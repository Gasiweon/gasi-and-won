$( function() {
    $( "#draggable" ).draggable();
    $( "#droppable" ).droppable({
      drop: function( event, ui ) {
        $( this )
          .addClass( "ui-state-highlight" )
          .find( "p" )
            .html( "가시원 출생 2021.4.1, 웹사이트 만든사람: 가시원 원장 아들, 웹사이트의 주 목적,게시판,구매기능 " );
      }
    });
  } );