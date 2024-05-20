<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
    <!-- Header -->
    <div class="header bg-primary pb-6">
      <div class="container-fluid">
        <div class="header-body">
          <div class="row align-items-center py-4">
            <div class="col-lg-6 col-8">
              <h6 class="h2 text-white d-inline-block mb-0">Laporan Pesanan</h6>
            </div>
            <div class="col-lg-6 col-5 text-right">
              <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                  <li class="breadcrumb-item"><a href="#"><i class="fas fa-home"></i></a></li>
                  <li class="breadcrumb-item"><?php echo anchor('admin/laporan', 'Laporan'); ?></li>
                </ol>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Page content -->
    <div class="container-fluid mt--6">
      <div class="row">
        <div class="col-md-12">
          <div class="card-wrapper">
            <div class="card">
              <div class="card-header">
                <h3 class="mb-0">Data Laporan</h3>
              </div>
              <div class="card-body">
                <form target="_blank" action="<?php echo site_url('admin/laporan/print'); ?>">
                    
                    <div class="form-group">
                        <label>Dari</label>
                        <input type="date" name="dari" class="form-control">
                    </div>

                    <div class="form-group">
                        <label>Sampai</label>
                        <input type="date" name="sampai" class="form-control">
                    </div>

                    <button class="btn btn-primary">Cetak</button>
                </form>

              </div>
              <div class="card-footer">
              </div>
              
            </div>
            
          </div>

        </div>
      </div>

      <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
  <div class="modal-dialog modal-modal-dialog-centered modal-" role="document">
      <div class="modal-content">
          <div class="modal-header">
              <h6 class="modal-title" id="modal-title-default">Hapus Penyewa?</h6>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span>
              </button>
          </div>
          <form action="#" id="deleteCustomer" method="POST">
        
            <input type="hidden" name="id" value="" class="deleteID">

          <div class="modal-body">
              <p class="deleteText">Yakin ingin penyewa ini? Semua data seperti data profil, order dan pembayaran juga akan dihapus.</p>
          </div>
          <div class="modal-footer">
              <button type="submit" class="btn btn-danger btn-delete">Hapus</button>
              <button type="button" class="btn btn-link  ml-auto" data-dismiss="modal">Batal</button>
          </div>
          </form>
      </div>
  </div>
</div>