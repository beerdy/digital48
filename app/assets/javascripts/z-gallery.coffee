    jQuery(document).ready () ->

        $('.gallery-img').on 'click', () ->
            modalWarpaper = document.getElementById 'modalWarpaper'
            imgWarpaper   = document.getElementById 'imgWarpaper'
            captionText   = document.getElementById 'captionText'

            imgWarpaper.src = this.prop 'src'
            captionText.innerHTML = this.prop 'alt'

            modalWarpaper.style.display = "block"        

        
        span = document.getElementsByClassName("close")[0];

        span.onclick = () ->
            modalWarpaper = document.getElementById 'modalWarpaper'
            modalWarpaper.style.display = "none"
        }


<img class="gallery-img" src="<%=%>" alt="<%=%>" height="auto">

<!-- The Modal -->
<div id="modalWarpaper" class="modal" style="z-index: 9999">
  <span class="close">&times;</span>
  <img id="imgWarpaper">
  <div id="captionText"></div>
</div>