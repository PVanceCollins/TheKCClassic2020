<%@ Page Language="C#" Title="The KC Classic TaeKwonDo Championship - KC Entertainment" MasterPageFile="~/ClassicMaster.master" AutoEventWireup="true" CodeFile="Entertainment.aspx.cs" Inherits="Entertainment"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
    .pageTitle
    {
    	font-size:x-large;
    	color:Red;
    }
    .subtitle
    {
    	font-size:large;
    	color:Navy;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="entertainmentOptions">
       	    <div class="navbar">
       	      <div class="navbar-inner">
           	        <div class="container">
               	    <ul>
                        <li><a href="#tab1" data-toggle="tab">BBQ</a></li>
                        <li><a href="#tab2" data-toggle="tab">Worlds of Fun</a></li>
                        <li><a href="#tab3" data-toggle="tab">Paradise Park</a></li>
                        <li><a href="#tab4" data-toggle="tab">The Country Club Plaza</a></li>
                        <li><a href="#tab5" data-toggle="tab">Legends</a></li>
                        <li><a href="#tab6" data-toggle="tab">Power and Light District</a></li>
                        <li><a href="#tab7" data-toggle="tab">Westport</a></li>
                    </ul>
                </div>
            </div>
        </div>
    	<div class="tab-content">
            <div class="tab-pane" id="tab1">
                <span class="pageTitle">Kansas City BBQ</span><br /><br />
                <img src="images/bbq2.jpg" alt="KC BBQ" /><br /><br />
            
                <span class="subtitle">Famous Kansas City Barbeque</span><br /><br />
                Kansas City is famous for its Barbeque and for good reason. It would be a travesty to visit KC and not go home without a stop at one of our famous joints. Here are some of the most popular BBQ places in town. If you don’t find what you are looking for then check out the extensive list at this link: <a href="http://www.rbjb.com/rbjb/guide.htm">http://www.rbjb.com/rbjb/guide.htm</a>
                <br /><br />
                <ul>
                    <li>Joe’s KC Barbeque <a href="http://www.oklahomajoesbbq.com">http://www.oklahomajoesbbq.com</a></li>
                    <li>Jack Stack Barbeque <a href="http://www.jackstackbbq.com">http://www.jackstackbbq.com</a></li>
                    <li>Q-39 <a href="https://q39kc.com/">https://q39kc.com/</a></li>
                    <li>Gates Barbeque <a href="http://www.gatesbbq.com/">http://www.gatesbbq.com/</a></li>
                    <li>Arthur Bryant’s Barbeque <a href="http://www.arthurbryantsbbq.com">http://www.arthurbryantsbbq.com</a></li>
                    <li>BB’s Lawnside Barbeque <a href="http://www.bbslawnsidebq.com">http://www.bbslawnsidebq.com</a></li>
                </ul>
                <br /><br />
            </div>
            <div class="tab-pane" id="tab2">
                 <span class="pageTitle">Worlds of Fun</span><br /><br />
                <img src="images/wof2.jpg" alt="Worlds of Fun" /><br /><br />
                <a href="http://www.worldoffun.com">Worlds of Fun Website</a><br /><br />

                <span class="subtitle">Something For Everyone!</span><br />
                There is something for everyone at Worlds of Fun and Oceans of Fun! 

                <br /><br /><span class="subtitle">RIDES</span><br />
                From our six world-class coasters to one of the largest collections of water attractions in the country, sort through our 
                <a href="http://www.worldsoffun.com/public/parks/wof/rides/index.cfm"> exciting list of rides! </a>

                <br /><br /><span class="subtitle">OCEANS OF FUN</span><br />
                Learn more about <a href="http://www.worldsoffun.com/public/parks/wof/map.cfm">  Oceans of Fun</a>, a 60-acre tropically themed water park located 

                next to Worlds of Fun. 

                <br /><br /><span class="subtitle">JUST FOR KIDS</span><br />
                There's big fun for the little ones at Worlds of Fun and Oceans of Fun. With <a 

                href="http://www.worldsoffun.com/public/parks/wof/kids/index.cfm">pint-sized rides and slides</a> to special services for children, families are sure to 

                have a comfortable and enjoyable day together. 

                <br /><br /><span class="subtitle">LIVE SHOWS</span><br />
                Our <a href="http://www.worldsoffun.com/public/parks/wof/shows/index.cfm">live show</a>s offer a great opportunity to catch your breath from all the 

                thrills and spills. Our talented 13-piece band, singers and performers will make you move to the music! 

                <br /><br /><span class="subtitle">FOODS</span><br />
                With more than <a href="http://www.worldsoffun.com/public/parks/wof/food/index.cfm">40 food locations</a> throughout the Park, there is no doubt that  

                your taste buds will be tempted! Get the scoop on restaurants, fun foods, meals for kids, and information for those with special diets.
                <br /><br />
            </div>
            <div class="tab-pane" id="tab3">
                <span class="pageTitle">Paradise Park</span><br /><br /><br />
                <img src="images/paradisepark.jpg">Paradise Park<br />
                <br />
                <a href="http://www.paradise-park.com/">Paradise Park Website</a><br /><br />

                <span class="subtitle">Family Fun Adventure<br />
                </span><br />
                <div >

                    <p><b>Paradise Park is <i>Kansas City's Premier Family Destination</i>, offering 
                      Family Fun &amp; Adventure, unique attractions, educational and discovery play, 
                      and professional development opportunities in a wholesome, safe, clean and friendly 
                      environment!</b> 
                    <p>Paradise Park is comprised of three distinct areas:<br>
                      <b> 1. Family Entertainment Center (FEC)<br>
                      2. Children's Edutainment Center (CEdC)<br>
                      3. Indoor meeting rooms for corporate groups and birthday parties, along with 
                      an outdoor picnic pavilion</b></p>
                    <p><font size="2">The <b>Family Entertainment Center (FEC)</b> offers a unique 
                      mix of indoor and outdoor attractions for all ages (<a href="http://www.paradise-park.com/gokarts.html">go karts</a>, <a href="http://www.paradise-park.com/minigolf.html">miniature golf</a>, 
                      <a href="http://www.paradise-park.com/batting.html">batting cages</a>, <a href="http://www.paradise-park.com/bumper.html">bumper cars</a>, <a href="http://www.paradise-park.com/rockwall.html">rock climbing wall</a>, <a href="http://www.paradise-park.com/arcade.html">game room</a> and <a href="http://www.paradise-park.com/foam.html">foam factory</a>). The 
                      <b><a href="http://www.paradise-park.com/edutainment.html">Children's Edutainment Center</a> (CEdC)</b> caters 
                      to children 9 years of age and younger and their parents. Children learn social, 
                      physical, mental and emotional development skills through a variety of age-appropriate 
                      indoor activities and the outdoor children's play garden. The Paradise Cafe 
                      &amp; Coffeehouse services both the CEdC and FEC.</font></p>
                    <p><font size="2">Paradise Park plays host to  <a href="http://www.paradise-park.com/groups.html">group 
                      and corporate events</a> and offers a variety of <a href="http://www.paradise-park.com/parties.html">birthday 
                      party packages</a>. </font></p>
                    <p><font size="2">Our guests appreciate the special blend of entertainment options 
                      appropriate for all ages. In addition, our local community takes great pride 
                      and satisfaction in the various forms of discovery play learning opportunities. 
                      A unique mix of families, school field trips and corporate groups all share 
                      in the Paradise Park experience daily. We invite you to join us in the Family 
                      Fun &amp; Adventure!</font></p>
        
                    <br /><br />
                </div>
            </div>
            <div class="tab-pane" id="tab4">
                 <span class="pageTitle">The Country Club Plaza</span><br /><br />
                <img src="images/plaza.jpg" alt="The Country Club Plaza" /><br /><br />
                <a href="http://www.countryclubplaza.com//">The Country Club Plaza Website</a><br /><br />

                <span class="subtitle">Fine Dining and Shopping</span><br />
                <div>

                    <p>
                    The Plaza’s popularity and reputation has been recognized around the country. The entire 15-block district, with more than 
                    150 shops and dozens of fine restaurants, makes The Country Club Plaza Kansas City’s premier retail, dining and entertainment 
                    destination.
                    </p>
                    <p>
                    Shoppers will recognize fine stores like Anthropologie and Tiffany & Co. Original Kansas City stores like Halls and Tivol 
                    give local flavor to the Plaza’s reputation as a national fashion center. Pleasant surprises can be found along each block – 
                    from tiny shoe boutiques to delicious chocolatiers, couture clothiers, stylish salons and fine jewelry.
                    </p>
                    <p>
                    Contemporary American to Kansas City steaks, authentic Italian to cosmopolitan Mexican are all a part of the Plaza experience.
                        Whether it’s the hot spot that caters to the late crowd or a quiet courtyard café, the Plaza restaurants offer an atmosphere 
                        that no other district can duplicate.
                    </p>
                    <p>
                    The Plaza is kept lively with a year-round calendar of music and special events, including the famous Plaza Lights and the 
                    widely recognized Plaza Art Fair.
                    </p>
                    <p>
                    With its rich history, fine dining, superb shopping and entertaining activities throughout the year, it is understandable 
                    that the Country Club Plaza is the Midwest’s premier destination.
                    </p>
                    <br /><br />
                </div>
            </div>
            <div class="tab-pane" id="tab5">
                <span class="pageTitle">Legends at Village West</span><br /><br />
                <img src="images/legends.jpg" alt="Legends at Village West" /><br /><br />
                <a href="http://www.legendsshopping.com/">Legends at Village West Website</a><br /><br />

                <span class="subtitle">Shopping - Dining - NASCAR - Baseball - Party</span><br />
                <div>

                    <p>The The Legends at Village West is 1.2 million square-foot open-air shopping and entertainment center and includes over 
                    100 stores and restaurants. </p>

                    <p>The Legends has a diverse and exciting tenant line-up, satisfying every style, every age and every price range. With many 
                    first-to-the-markets, The Legends is a true shopping destination. Some of the nation's hottest retailers call The Legends
                     home, including Gap Outlet, Banana Republic Factory Store, Ann Taylor Factory Store, Tommy Hilfiger, BCBG Max Azria and many
                      more. </p>

                    <p>The Legends also brings several first-ever restaurants to the region, including Dave & Buster's and T-Rex -- a 
                    20,000-square-foot destination restaurant where dinosaurs come to life amongst extravagant theatrical settings including 
                    geysers, waterfalls and ice caves. </p>

                    <p>While the shopping and dining is sure to please, The Legends architecture will not go unnoticed. The 150-foot-tall 
                    Smokestack Tower is an icon of the center, designed with the theme of a historic warehouse district. Another focal point 
                    is the Civic Courtyard Fountain, a two-tiered fountain with water that rises over 60-feet in the air. Designed by 
                    world-renowned WET Design, the fountain is heated, allowing it to operate year-round. </p>

                    <p>The Legends uses its various amenities to celebrate famous Kansans in art, history, politics, statesmanship, science and 
                    invention, adventurers and explorers, sports and athletics and the native landscape. In all, there are more than 80 tributes 
                    to legendary Kansans in a variety of art forms, including statues, portraits and medallions, all of which comprise the 
                    shopping center's goal to provide "edutainment." Pedestrian plazas and courtyards add to the ambiance featuring lush 
                    landscape and outdoor fireplaces. </p>

                    <p>The Legends at Village West is located near the intersection of 1-70 and 1-435 (exit Parallel Parkway west off of 1-435). </p>
                    <br /><br />
                </div>
            </div>
            <div class="tab-pane" id="tab6">
                <span class="pageTitle">Power and Light District</span><br /><br />
                <img src="images/kcpowerandlight.jpg" alt="KC Power and Light District" /><br /><br />
                <a href="http://www.powerandlightdistrict.com/index.cfm">KC Power and Light District Website</a><br /><br />

                <span class="subtitle">Dine - Drink - Play</span><br />
                <div>

                        <p>Premier dining, entertainment and shopping district in the heart of downtown Kansas City. <br />Offering over a half million 
                        square feet The Kansas City Power & Light District is the mid-west's premier entertainment epicenter. With more than 50 
                        unique and captivating retail outlets, restaurants, bars, and entertainment venues, the district offers something for 
                        everyone. Located in the heart of downtown, this vibrant, new nine-block neighborhood links the Convention Center to the 
                        Sprint Arena and is bringing the beat back to Kansas City. 
                    </p>
                    <p>
                    World-class attractions include the Midland Theater by AMC, The Mainstreet Theater, and the KC Live! Entertainment District. 
                    </p>
                    <p>
                    KC Live!, located directly across the street from the Sprint Center, in the heart of The KC Power and Light District, is 
                    the Midwest's premier dining and entertainment destination. Featuring world-class restaurants, taverns and night spots KC 
                    Live! is where Kansas City goes to play. McFadden's Saloon, Tengo Sed Cantina, Maker's Mark Restaurant, Angels Rock Bar, 
                    Mosaic Lounge, Shark Bar, PBR Big Sky Cowboy Bar, Johnny's Tavern and Howl at the Moon. </p>
                    <br /><br />
                </div>
            </div>
            <div class="tab-pane" id="tab7">
                 <span class="pageTitle">Historic Westport</span><br /><br />
                <img src="images/westport.jpg" alt="Westport" /><br /><br />
                <a href="http://www.westportkc.com/">Westport Website</a><br /><br />

                <span class="subtitle">Dining - Nightlife - Shopping</span><br />
                <di>

                    <p>Westport is one of Kansas City's premier destinations for dining, shopping, site seeing and is the heart of the city's 
                    nightlife. Located in the midtown, Westport is just North of the Country Club Plaza and a few miles South of downtown Kansas 
                    City.
                    </p><p>
                    Before there was a Kansas City, there was a Westport, built along the Santa Fe Trail as an outfitting center for wagon 
                    trains heading west. Today the area is filled with renovated and new buildings housing trendy shops, restaurants, and 
                    nightspots.
                    </p>
                    <br /><br />
            </di>
        </div>

    </div>
</div>





    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap-wizard/1.2/jquery.bootstrap.wizard.js" ></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#entertainmentOptions').bootstrapWizard({
                tabClass: 'nav nav-pills'
            });
        });
    </script>
</asp:Content>

