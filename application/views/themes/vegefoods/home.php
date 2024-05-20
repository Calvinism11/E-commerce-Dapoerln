<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section id="home-section" class="hero">
    <div class="home-slider owl-carousel">
    <div class="slider-item" style="background-image: url(<?php echo get_theme_uri('images/dapoerln_logo.png'); ?>);">
        <div class="overlay"></div>
      <div class="container">
        <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

          <div class="col-md-12 ftco-animate text-center">
            <h1 class="mb-2">Kami Menjual Makanan</h1>
            
            <p><a href="#products" class="btn btn-primary">Belanja Sekarang</a></p>
          </div>

        </div>
      </div>
    </div>

    <div class="slider-item" style="background-image: url(<?php echo get_theme_uri('images/dimsum_mentai.jpg'); ?>);">
        <div class="overlay"></div>
      <div class="container">
        <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

          <div class="col-sm-12 ftco-animate text-center">
            <h1 class="mb-2">Lezat Tiada Tara</h1>
            
            <p><a href="#products" class="btn btn-primary">Belanja Sekarang</a></p>
          </div>

        </div>
      </div>
    </div>
  </div>

</section>

<section class="ftco-section" id="products">
      <div class="container">
          <div class="row no-gutters ftco-services">
    <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
      <div class="media block-6 services mb-md-0 mb-4">
        <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
              <span class="flaticon-shipped"></span>
        </div>
        <div class="media-body">
          <h3 class="heading">Coupon</h3>
          <span>Tersedia Banyak Coupon</span>
        </div>
      </div>      
    </div>
    <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
      <div class="media block-6 services mb-md-0 mb-4">
        <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
              <span class="flaticon-award"></span>
        </div>
        <div class="media-body">
          <h3 class="heading">Selalu Sedia</h3>
          <span>Siap Sedia Menemani Anda</span>
        </div>
      </div>    
    </div>
    <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
      <div class="media block-6 services mb-md-0 mb-4">
        <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
              <span class="flaticon-award"></span>
        </div>
        <div class="media-body">
          <h3 class="heading">Barang Berkualitas</h3>
          <span>Barang-Barang Berkualitas</span>
        </div>
      </div>      
    </div>
    <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
      <div class="media block-6 services mb-md-0 mb-4">
        <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
              <span class="flaticon-customer-service"></span>
        </div>
        <div class="media-body">
          <h3 class="heading">Bantuan</h3>
          <span>Hubungi kami  +62 89-514-774-421</span>
        </div>
      </div>      
    </div>
  </div>
      </div>
  </section>


  <section class="ftco-section">
  <div class="container">
          <div class="row justify-content-center mb-3 pb-3">
    <div class="col-md-12 heading-section text-center ftco-animate">
        <span class="subheading">Produk</span>
      <h2 class="mb-4"><?php echo get_store_name(); ?></h2>
      <p><?php echo get_settings('store_tagline'); ?></p>
    </div>
  </div>   		
  </div>
  <div class="container">
      <div class="row">
          <?php if ( count($products) > 0) : ?>
            <?php foreach ($products as $product) : ?>
          <div class="col-md-6 col-lg-3 ftco-animate">
              <div class="product">
                  <a href="<?php echo site_url('shop/product/'. $product->id .'/'. $product->sku .'/'); ?>" class="img-prod">
                      <img class="img-fluid" src="<?php echo base_url('assets/uploads/products/'. $product->picture_name); ?>" alt="<?php echo $product->name; ?>">
                      <?php if ($product->current_discount > 0) : ?>
                        <span class="status"><?php echo count_percent_discount($product->current_discount, $product->price, 0); ?>%</span>
                      <?php endif; ?>
                      <div class="overlay"></div>
                  </a>
                  <div class="text py-3 pb-4 px-3 text-center">
                      <h3><a href="<?php echo site_url('shop/product/'. $product->id .'/'. $product->sku .'/'); ?>"><?php echo $product->name; ?></a></h3>
                      <div class="d-flex">
                          <div class="pricing">
                              <p class="price">
                                  <?php if ($product->current_discount > 0) : ?>
                                  <span class="mr-2 price-dc">Rp <?php echo format_rupiah($product->price); ?></span><span class="price-sale">Rp <?php echo format_rupiah($product->price - $product->current_discount); ?></span>
                                  <?php else : ?>
                                    <span class="mr-2"><span class="price-sale">Rp <?php echo format_rupiah($product->price - $product->current_discount); ?></span>
                                  <?php endif; ?>
                                </p>
                          </div>
                      </div>
                      <div class="bottom-area d-flex px-3">
                          <div class="m-auto d-flex">
                              <a href="<?php echo site_url('shop/product/'. $product->id .'/'. $product->sku .'/'); ?>" class="buy-now d-flex justify-content-center align-items-center text-center">
                                  <span><i class="ion-ios-menu"></i></span>
                              </a>
                              <a href="#" class="add-to-chart add-cart d-flex justify-content-center align-items-center mx-1" data-sku="<?php echo $product->sku; ?>" data-name="<?php echo $product->name; ?>" data-price="<?php echo ($product->current_discount > 0) ? ($product->price - $product->current_discount) : $product->price; ?>" data-id="<?php echo $product->id; ?>">
                                  <span><i class="ion-ios-cart"></i></span>
                              </a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
            <?php endforeach; ?>
          <?php else : ?>
          <?php endif; ?>

      </div>
  </div>
</section>
  
  

