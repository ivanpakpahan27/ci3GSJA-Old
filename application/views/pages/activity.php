<div class="carousel-home">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <div class="item active">
                <img src="<?php echo base_url(); ?>assets/images/activity/2.jpg" alt="-" style="width:100%;">
            </div>

            <div class="item">
                <img src="<?php echo base_url(); ?>assets/images/activity/3.jpg" alt="-" style="width:100%;">
            </div>

            <div class="item">
                <img src="<?php echo base_url(); ?>assets/images/activity/4.jpg" alt="-" style="width:100%;">
            </div>

            <div class="item">
                <img src="<?php echo base_url(); ?>assets/images/activity/5.jpg" alt="-" style="width:100%;">
            </div>
        </div>

        <!-- Left and right controls -->
        <!-- <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a> -->
    </div>
</div>
<br><br>
<center>
    <h4><b>Jadwal Kegiatan</b></h4>
</center>
<br><br>
<table class="styled-table">
    <thead>
        <tr>
            <th>Kegiatan</th>
            <th>Hari</th>
            <th>Tempat</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Ibadah Raya</td>
            <td>Minggu</td>
            <td>Gereja</td>
        </tr>
        <tr class="active-row">
            <td>Doa Puasa</td>
            <td>Jum'at</td>
            <td>-</td>
        </tr>
        <!-- and so on... -->
    </tbody>
</table>