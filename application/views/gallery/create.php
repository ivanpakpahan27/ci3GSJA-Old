<h2><?= $title; ?></h2>
<?php echo validation_errors(); ?>
<?php echo form_open_multipart('gallery/create'); ?>
<div class="form-group">
    <label>Caption</label>
    <input type="text" class="form-control" name="title" placeholder="Masukkan Caption Gambar">
</div>
<div class="form-group">
    <label>Tanggal Diambil</label>
    <input type="date" class="form-control" name="date_taken" placeholder="Masukkan Waktu Pengambilan Gambar">
</div>
<div class="form-group">
    <label>Upload Gambar</label>
    <input type="file" name="userfile" size="20">
</div>
<button type="submit" class="btn btn-default">Posting</button>
</form>