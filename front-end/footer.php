<footer id="footer">
        <div class="container footer-container">
            <div class="row">
                <div class="col-md-2 col-sm-6">
                    <div class="widget">
                        <h5 class="widget-title">Menu</h5>
                        <ul class="menu">
                            <li><a href="index.php">Trang chủ</a></li>
                            <li><a href="#">Coming soon</a></li>
                            <li><a href="#">Đặt vé</a></li>
                            <li><a href="#">Terms of service</a></li>
                            <li><a href="#">Pricing</a></li>
                        </ul>
                    </div>
                    <div class="widget">
                        <div class="social-links">
                            <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                            <a href="javascript:;"><i class="fa fa-twitter"></i></a>
                            <a href="javascript:;"><i class="fa fa-google-plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h5 class="widget-title">Địa chỉ</h5>
                        <p>
                            California. AMC Dine-In Theatres Marina,
                            Street 26, Distritc 543 #108
                         </p> 
                         <p>
                            <i class="fa fa-mail"></i>Example@mail.com<br>
                            <i class="fa fa-phone"></i> + 123 456 7890
                         </p> 
                    </div>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-6">
                    <div class="widget">
                    <h5 class="widget-title">Phản hồi</h5>
                        <form class="contact_form transparent">
                            <div class="row">
                                <div class="col-sm-12">
                                    <input type="text" class="inputValidation" name="name" placeholder="Họ và tên *">
                                </div>
                                <div class="col-sm-12">
                                    <input type="text" class="inputValidation" name="email" placeholder="Email *">
                                </div>
                                <div class="col-sm-12 ">
                                    <textarea class="inputValidation" placeholder="Góp ý tại đây *"></textarea>
                                    <button type="submit" class="button fill rectangle">Gửi</button>
                                </div>
                            </div>
                        </form>
                        <div class="errorMessage"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sub-footer">
            <div class="container">
                <div class="row copyright-text">
                    <div class="col-sm-12 text-center">
                        <p class="mv3 mvt0">&copy; Copyrights 2023 Bravo. All rights reserved</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    </div>
    <!-- Overlay Search -->
    <div id="overlay-search">
        <form method="get" action="http://template.themeton.com/tenguu-html/">
            <input type="text" name="s" placeholder="Tìm kiếm..." autocomplete="off">
            <button type="submit">
                <i class="fa fa-search"></i>
            </button>
        </form>
        <a href="javascript:;" class="close-window"></a>
    </div>
    <div id="order">
        <div class="container">
            <div class="row order-content">
                <div class="col-sm-8 col-xs-12 seat_content ph0">
                    <h2>mua vé</h2>
                    <div class="entry-order-content">
                        <form id="msform" name="msform">
                            <!-- fieldsets -->
                            <fieldset>
                                 <div class="wpc-content">
                                    <h3>Chọn rạp</h3>
                                    <select name="location">
                                        <option>Tenguu Cinema Tysons corner</option>
                                        <option>Tenguu Cinema </option>
                                        <option>Tenguu Cinema corner</option>
                                        <option>Tenguu Cinema Tysons</option>
                                    </select>
                                    <h3 class="mt3">Phim</h3>
                                    <select>
                                        <option>Dead pool</option>
                                        <option>THE BATTLE OF ALGIERS (DI ALGERI)</option>
                                        <option>LORD OF THE RINGS: THE RETURN OF THE KINGS</option>
                                        <option>Tenguu Cinema Tysons corner</option>
                                    </select>
                                    <h3 class="mt3">Suất chiếu</h3>
                                    <input type='date' class="datetime"/>
                                    <h3 class="mt3">Thời gian</h3>
                                    <ul class="order-date">
                                        <li><a href="javascript:;"><i>11:50</i></a></li>
                                        <li><a href="javascript:;"><i>13:40</i></a></li>
                                        <li><a href="javascript:;"><i>16:35</i></a></li>
                                        <li><a href="javascript:;"><i>17:30</i></a></li>
                                        <li><a href="javascript:;"><i>19:50</i></a></li>
                                        <li><a href="javascript:;"><i>21:10</i></a></li>
                                    </ul>
                                </div>
                                <input type="button" name="next" class="next action-button" value="Next" />
                            </fieldset>
                            <fieldset class="seat-content">
                                <div class="wpc-content">
                                    <h3 class="seat_title">ghế</h3>
                                    <div id="seat-map"></div>
                                    <div id="legend"></div>
                                </div>
                                <input type="button" name="previous" class="action-button previous" value="Quay lại trước đó" />
                                <input type="submit" name="submit" class="submit action-button" value="Xác nhận" />
                            </fieldset>
                        </form>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12 order_sidebar ph0">
                    <h2>Thông tin của bạn</h2>
                    <div class="order-details">
                        <span> Địa điểm:</span><p id="locationp">Tenguu Cinema Tysons corner</p>
                        <span>Thời gian:</span>  <p>2016.3.8 18:30</p>
                        <span>Ghế: </span>
                        <ul id="selected-seats"></ul>
                        <div>Số vé: <span id="counter">0</span></div>
                        <div>Thành tiền: <b><span id="total">0</span>đ</b></div>
                    </div>
                    <a href="javascript:;" class="close-window"><i class="fa fa-times"></i></a>
                </div>
            </div>
        </div>
    </div>

    <!-- Include jQuery and Scripts -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/packages.min.js"></script>
    <script type="text/javascript" src="js/scripts.min.js"></script>
<!-- jQuery easing plugin -->
</body>

<!-- Mirrored from template.themeton.com/tenguu-html/?storefront=envato-elements by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 13 Nov 2023 09:50:49 GMT -->
</html>