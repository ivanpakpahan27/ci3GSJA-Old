<h2><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open_multipart('posts/create'); ?>
<div class="form-group">
  <label>Judul</label>
  <input type="text" class="form-control" name="title" placeholder="Masukkan Judul">
</div>
<div class="form-group">
  <label>Penulis</label>
  <input type="text" class="form-control" name="writter" placeholder="Masukkan Nama Penulis">
</div>
<div class="form-group">
  <label>Isi</label>
  <textarea id="editor1" class="form-control" name="body" placeholder="Masukkan Isi Postingan"></textarea>
</div>
<div class="form-group">
  <label>Kategori</label>
  <select name="category_id" class="form-control">
    <?php foreach ($categories as $category) : ?>
      <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
    <?php endforeach; ?>
  </select>
</div>
<div class="form-group">
  <label>Upload Gambar</label>
  <input type="file" name="userfile" size="20">
</div>
<button type="submit" class="btn btn-default">Posting</button>
</form>