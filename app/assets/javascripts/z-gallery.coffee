jQuery(document).ready () ->

  $('.gallery-img').on 'click', () ->
    #modalWarpaper = document.getElementById 'modalWarpaper'
    #imgWarpaper   = document.getElementById 'imgWarpaper'
    #captionText   = document.getElementById 'captionText'

    imgWarpaper.src       = $(this).prop 'src'
    captionText.innerHTML = $(this).prop 'alt'

    modalWarpaper.style.display = "block"        


    closeModal = document.getElementsByClassName("closeModal")[0]

    closeModal.onclick = () ->
      #modalWarpaper = document.getElementById 'modalWarpaper'
      modalWarpaper.style.display = "none"
