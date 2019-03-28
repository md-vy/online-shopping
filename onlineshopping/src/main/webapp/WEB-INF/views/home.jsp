    <div class="container">

      <div class="row">

        <div class="col-lg-3">
        	<%@include file="./shared/sidebar.jsp" %>
        </div>
        
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="${images}/banner1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="${images}/banner2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="${images}/banner3.jpg" alt="Third slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="${images}/banner4.jpg" alt="Fourth slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <div class="row">

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/${products[0].id}/product"><img class="card-img-top" src="${images}/${products[0].code}.jpg" alt="${products[0].name}"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/${products[0].id}/product">${products[0].name}</a>
                  </h4>
                  <h5>&#8377; ${products[0].unitPrice}</h5>
                  <p class="card-text">${products[0].description}!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/${products[1].id}/product"><img class="card-img-top" src="${images}/${products[1].code}.jpg" alt="${products[1].name}"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/${products[1].id}/product">${products[1].name}</a>
                  </h4>
                  <h5>&#8377; ${products[1].unitPrice}</h5>
                  <p class="card-text">${products[1].description}!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/${products[2].id}/product"><img class="card-img-top" src="${images}/${products[2].code}.jpg" alt="${products[2].name}"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/${products[2].id}/product">${products[2].name}</a>
                  </h4>
                  <h5>&#8377; ${products[2].unitPrice}</h5>
                  <p class="card-text">${products[2].description}!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/${products[3].id}/product"><img class="card-img-top" src="${images}/${products[3].code}.jpg" alt="${products[3].name}"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/${products[3].id}/product">${products[3].name}</a>
                  </h4>
                  <h5>&#8377; ${products[3].unitPrice}</h5>
                  <p class="card-text">${products[3].description}!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/${products[4].id}/product"><img class="card-img-top" src="${images}/${products[4].code}.jpg" alt="${products[4].name}"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/${products[4].id}/product">${products[4].name}</a>
                  </h4>
                  <h5>&#8377; ${products[4].unitPrice}</h5>
                  <p class="card-text">${products[4].description}!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="${contextRoot}/show/${products[5].id}/product"><img class="card-img-top" src="${images}/${products[5].code}.jpg" alt="${products[5].name}"></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="${contextRoot}/show/${products[5].id}/product">${products[5].name}</a>
                  </h4>
                  <h5>&#8377; ${products[5].unitPrice}</h5>
                  <p class="card-text">${products[5].description}!</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>

          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
