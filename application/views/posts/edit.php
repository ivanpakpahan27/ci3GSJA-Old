<h2 style="font-family:Poppins, sans-serif;"><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('posts/update'); ?>
<input type="hidden" name="id" value="<?php echo $post['id']; ?>">
<div style="font-family:Poppins, sans-serif;" class="form-group">
  <label>Judul</label>
  <input type="text" class="form-control" name="title" placeholder="Masukkan Judul" value="<?php echo $post['title']; ?>">
</div>
<div style="font-family:Poppins, sans-serif;" class="form-group">
  <label>Penulis</label>
  <input type="text" class="form-control" name="writter" placeholder="Masukkan Nama Penulis" value="<?php echo $post['writter']; ?>">
</div>
<div style="font-family:Poppins, sans-serif;" class="form-group">
  <label>Isi</label>
  <textarea id="editor1" class="form-control" name="body" placeholder="Masukkan Isi Post"><?php echo $post['body']; ?></textarea>
</div>
<div style="font-family:Poppins, sans-serif;" class="form-group">
  <label>Kategori</label>
  <select name="category_id" class="form-control">
    <?php foreach ($categories as $category) : ?>
      <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
    <?php endforeach; ?>
  </select>
</div>
<button style="font-family:Poppins, sans-serif;" type="submit" class="btn btn-success">Posting</button>
</form>