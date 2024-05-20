<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<!-- Header -->
<div class="header bg-primary pb-6">
  <div class="container-fluid">
    <div class="header-body">
      <div class="row align-items-center py-4">
        <div class="col-lg-6 col-7">
          <h6 class="h2 text-white d-inline-block mb-0">Order #<?php echo $data->order_number; ?></h6>
        </div>
        <div class="col-lg-6 col-5 text-right">
          <a href="<?php echo site_url('admin/orders/pdf/' . $data->id); ?>" class="btn btn-info"><i class="fa fa-print"></i> Print</a>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Page content -->
<div class="container-fluid mt--6">

  <div class="row">
    <div class="col-md-8">
      <div class="card-wrapper">
        <div class="card">
          <div class="card-header">
            <h3 class="mb-0">Data Order</h3>
            <?php if ($order_flash) : ?>
              <span class="float-right text-success font-weight-bold" style="margin-top: -30px;"><?php echo $order_flash; ?></span>
            <?php endif; ?>
          </div>

          <div class="card-body p-0">
            <table class="table align-items-center table-flush table-striped">
              <tr>
                <td>Nomor</td>
                <td><b>#<?php echo $data->order_number; ?></b></td>
              </tr>
              <tr>
                <td>Tanggal</td>
                <td><b><?php echo get_formatted_date($data->order_date); ?></b></td>
              </tr>
              <tr>
                <td>Item</td>
                <td><b><?php echo $data->total_items; ?></b></td>
              </tr>
              <tr>
                <td>Harga</td>
                <td><b>Rp <?php echo format_rupiah($data->total_price); ?></b></td>
              </tr>
              <tr>
                <td>Ongkir</td>
                <td><b>Rp <?php echo format_rupiah($data->ongkir); ?></b></td>
              </tr>
              <tr>
                <td>Metode pembayaran</td>
                <td><b><?php echo ($data->payment_method == 1) ? 'Virtual Account' : 'Bayar ditempat'; ?></b></td>
              </tr>
              <tr>
                <td>Status</td>
                <td><b class="statusField"><?php echo get_order_status($data->order_status, $data->payment_method); ?></b></td>
              </tr>
            </table>
          </div>
          <div class="card-footer">
            <form action="<?php echo site_url('admin/orders/status'); ?>" method="POST">
              <input type="hidden" name="order" value="<?php echo $data->id; ?>">
              <div class="row">
                <div class="col-md-10">
                  <div class="form-group">
                    <?php if ($data->payment_method == 1) : ?>
                      <select class="form-control" id="status" name="status">
                        <option value="2" <?php echo ($data->order_status == 2) ? ' selected' : ''; ?>>Dalam proses</option>
                        <option value="3" <?php echo ($data->order_status == 3) ? ' selected' : ''; ?>>Dalam pengiriman</option>
                        <option value="4" <?php echo ($data->order_status == 4) ? ' selected' : ''; ?>>Selesai</option>
                        <option value="5" <?php echo ($data->order_status == 5) ? ' selected' : ''; ?>>Batalkan</option>
                      </select>
                    <?php else : ?>
                      <select class="form-control" id="status" name="status">
                        <option value="1" <?php echo ($data->order_status == 1) ? ' selected' : ''; ?>>Dalam proses</option>
                        <option value="2" <?php echo ($data->order_status == 2) ? ' selected' : ''; ?>>Dalam pengiriman</option>
                        <option value="3" <?php echo ($data->order_status == 3) ? ' selected' : ''; ?>>Selesai</option>
                        <option value="4" <?php echo ($data->order_status == 4) ? ' selected' : ''; ?>>Batalkan</option>
                      </select>
                    <?php endif; ?>
                  </div>
                </div>
                <div class="col-md-2">
                  <div class="text-right">
                    <input type="submit" value="OK" class="btn btn-md btn-primary">
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>

        <div class="card card-primary">
          <div class="card-header">
            <h3 class="mb-0">Barang dalam pesanan</h3>
          </div>
          <div class="card-body p-0">
            <table class="table align-items-center table-flush">
              <thead class="thead-light">
                <tr>
                  <th scope="col"></th>
                  <th scope="col">Produk</th>
                  <th scope="col">Jumlah beli</th>
                  <th scope="col">Harga satuan</th>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($items as $item) : ?>
                  <tr>
                    <td>
                      <img class="img img-fluid rounded" style="width: 60px; height: 60px;" alt="<?php echo $item->name; ?>" src="<?php echo base_url('assets/uploads/products/' . $item->picture_name); ?>">
                    </td>
                    <td>
                      <h5 class="mb-0"><?php echo $item->name; ?></h5>
                    </td>
                    <td><?php echo $item->order_qty; ?></td>
                    <td>Rp <?php echo format_rupiah($item->order_price); ?></td>
                  </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
          </div>
        </div>

      </div>

    </div>
    <div class="col-md-4">
      <div class="card card-primary">
        <div class="card-header">
          <h3 class="mb-0">Data Penerima</h3>
        </div>
        <div class="card-body p-0">
          <table class="table align-items-center table-flush table-hover">
            <tr>
              <td>Nama</td>
              <td><b><?php echo $delivery_data->customer->name; ?></b></td>
            </tr>
            <tr>
              <td>No. HP</td>
              <td><b><?php echo $delivery_data->customer->phone_number; ?></b></td>
            </tr>
            <tr>
              <td>Provinsi</td>
              <td>
                <div style="white-space: initial;"><b><?php echo $data->provinsi; ?></b></div>
              </td>
            </tr>
            <tr>
              <td>Kabupaten</td>
              <td>
                <div style="white-space: initial;"><b><?php echo $data->kabupaten; ?></b></div>
              </td>
            </tr>
            <tr>
              <td>Alamat</td>
              <td>
                <div style="white-space: initial;"><b><?php echo $delivery_data->customer->address; ?></b></div>
              </td>
            </tr>
            <tr>
              <td>Catatan</td>
              <td><b><?php echo $delivery_data->note; ?></b></td>
            </tr>
          </table>
        </div>
      </div>
