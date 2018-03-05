<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IIIBF_BUK_ALUMNI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="thumbnail">
                <!--img src="img/IIIBF-Building-edited.jpg" class="img-responsive" alt="Alumni image" max-height="200px" width="100%"-->


                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                  <!-- Indicators -->
                  <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                      <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                      <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                  </ol>

                  <!-- Wrapper for slides -->
                  <div class="carousel-inner" role="listbox">
                    <div class="item active">
                      <img src="img/Carousel/Images01.jpg" alt="Carousel Image 01">
                      <div class="carousel-caption">
                        ...
                      </div>
                    </div>
                    <div class="item">
                      <img src="img/Carousel/Images02.jpg" alt="Carousel Image 02">
                      <div class="carousel-caption">
                        ...
                      </div>
                    </div>
                    <div class="item">
                      <img src="img/Carousel/Images03.jpg" alt="Carousel Image 02">
                      <div class="carousel-caption">
                        ...
                      </div>
                    </div>
                    <div class="item">
                      <img src="img/Carousel/Images04.jpg" alt="Carousel Image 02">
                      <div class="carousel-caption">
                        ...
                      </div>
                    </div>
                    <div class="item">
                      <img src="img/Carousel/Images05.jpg" alt="Carousel Image 02">
                      <div class="carousel-caption">
                        ...
                      </div>
                    </div>
                    <div class="item">
                      <img src="img/Carousel/Image06.jpg" alt="Carousel Image 02">
                      <div class="carousel-caption">
                        ...
                      </div>
                    </div>
    
                    ...
                  </div>

                  <!-- Controls -->
                  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
        
                <div class="caption text-center">
                    <h1 class="text-white">The International Institute of Islamic banking and finance, Bayero University, Kano...</h1>
                    <a href="/about" class="btn btn-primary">Read more</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row text-center">
        <h2 class="#">Recent Articles</h2>
        <div id="ArticleMenu" style="text-align:left">
            <asp:ListView id="ArticleList"
                itemType="IIIBF_BUK_ALUMNI.Models.Article"
                runat="server"
                selectMethod="GetArticles">
                <ItemTemplate>
                    <div class="col-md-4 text-center">
                        <img src="/img/Articles/<%#:Item.ImagePath%>" width="300" height="200" style="border: solid" />
                            <h3><%#: Item.Title  %></h3>
                        <p><%#: Item.Introduction  %></p>
                            <a class="#" href="/ArticleDetails.aspx?articleId=<%#: Item.ArticleID  %>">
                                Read More
                            </a>       
                    </div>
                </ItemTemplate>             
                
            </asp:ListView>        
        </div>
        
    </div>
    <div class="row text-center">
        <b style="font-size:medium; font-style: normal">
            <a class="btn btn-default" href="/Articles.aspx">More News</a>
        </b>
    </div>
    <!--div class="row text-center">
        <h2 class="#">Our School Programs</h2>
        <div class="col-md-4">
            <h3>Humanities</h3>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h3>Art</h3>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h3>Science</h3>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </!--div-->
    <!--div class="row text-center">
        <h2 class="#">Meet our Executives</h2>
        <div class="col-md-4 text-center">            
            <div>
              <img src="data:image/jpeg;base64,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" class="rounded" alt="...">
            </div>
            <h3>Amosa Ibrahim</h3>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4 text-center">            
            <div>
              <img src="data:image/jpeg;base64,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" class="rounded" alt="...">
            </div>
            <h3>Mallam Isa Dangogo</h3>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4 text-center">            
            <div>
              <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAKsAcgMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAgMEBQYHAQj/xABBEAACAQMCBAMFBQQHCQEAAAABAgMABBEFEgYhMUETUWEHInGBkRQyQqGxFiNDwRVSYnKC0fAkMzRTc5Ki4fEI/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAIhEAAgIDAAICAwEAAAAAAAAAAAECEQMSITFBIlEEE4Fh/9oADAMBAAIRAxEAPwCem1qZDjfzpI6zMfx0yNtLO24KfpTiPSpj/Dam2YrigzatORyekjqt1nkadJpMg/hNQnsHjTJiIo2ahS3ubmVQS9CZpCcbifnS9lH+7GBSrRxRHxJpIwvbLVmwIj4rS7Zt4iYiny2VxtB8FqWTiC3gdnOxo8BIlB6nvn6D86cWnE6NJtuol2lsBoMuB8fKk3ZTQZi1uB/Bf6V1be4B5xN9Kn5dUt1UMFLA+QpsdetAeYI+VbZg1Q1t2lixmBvpUhFqToP+Hk+lIHX7P/Qrn7QWXf8ASh36Dz7Hn9LsOttJ9K4dY87eT6Uz/aKxpOTiCyIOD+VD+G/o/wD6aX/kP9KFQh121z+L6UKNf4AeQQRx/hp6jxAfdNJKlGC1RwQuwt4sWPut9KY6nNF4Bwh+lOSvKmV9gKCwyoOSPOtojbMaQvJAgSMnxCucAdKibvT7mZt0luJ25kb2IHpkDt/nVogs9qHBHiv70rHv5L8BXYgpxu61DLNp0js/HxKStmZ3lvqgMu4pASAqlIFxGvkox19e1MY2e3YPuvWk/Duk2rj4Dr+tbDJbxSrhlBHqKj7/AEKyu1VWhXCjsMVJSZ1PFB8RQo9WkQgMJYXXAySTyPfmOfP6VMwS/aowwIL/AIsfrT2fhaOJgLQsVJx4bHIAPx7UkdKuNLuESUE28hG126Lk4x/L5CrQlbOTNh1QgYWPWimHHnUmYefQ0lLHjtVLOWhj4Yoj4Slpm2UxuZMkc+VMYP4y+lCmuKFCzGkqtGC0YLijbcimsFCZAxTS4QuyxqAWY4Hp3/lR5IptxI6UmLuG1lhS4LCWR8oAuc4/+1rCot+BW7mSC3hCn3nUD16A/wA6Qt8n3u1ISK95f7mUrHGgGP7QGD+gplrMrOfAt4bqVRy2QYBPqSeVcuVXI9D8b4xLGvIVwHnVItE1ee3juI1u7PL7BbzT+9jGc4Axjt17VNm5m/o0TISZ+mzvmlqjoXVZNsATXL9Y5I7aKbAVmKg+vaqPNq+rfbktriG9CTR7w9uoIVRnOST15dOtTviTXujRGCR5RFMm1n+9gnHP8qePGc+fsR3cQBJXUDHpTKePrUpPlmLHqRTGanvpw0QWoLtAqImbJX409169SJguRu7CmUMZaNWcU1goPihXc0Kxi/lpmchBTlfECZI51JWdhEYgTuz6mlHsVDghsDyJpqJ7KrIn7QAdpFR2tKy+BPFGGeNsgEeoz+RNWVtNh++eeKZ33gJbuyruZAdoB9KWUXJcL4MqhkVic0ESQCWMe86Bjjpz8qZxqrZVQB6in13v+yoWGMQg49cCq79rlTcVySDgYqORdO3A+D24eJJdjEvKR0z+pokECvZ5wAC2fgai5Gtry3aCZyGLbt0bEMD5gio8WOpQIYDfM1qDyfb+8+fb54pdenTtS4Wi2TxMgFgQeak07ZfCtJmVTu5HA74INV+yuFt9oVnfbyLM25j8TU1a3YdWSQ7VHMk0ydMllrUKxJznr3xUFrl+tnCzHHIVNFwIy5PXJql8SyLdsYs/nQcqOGk3wg7KVNVvjLI3ug8hU9cKI4Qq1TxE9lNuiOBnmKm4NQWeLaW97FaE/RpwfkcbvWhUeXfJ60KNi6m1pq0QcxJzKjsa5cTSzIWGQAMg1nEGqSWd4RFGXLeZ5mtD0oTXFojTRgbh0zXZCcJdR5ybfGxNbmYQNmXOB1qDthMupW6SzbfHn2oM53nqRj4AmrYbGDblsBF5kZwBWNa97QLK39penyIQNM0248PxE5hg6lHf4DIx6L607kpLg8cbtWalrF0I4jGCM7SpHlVfspVLYYDDjBzVm1nTE1W3W5sZEEzKGU/hkH+u9UkSSWtzLBcwvE6no1cWW/J6347VUKzcK2Kz+PaB7Zn+8YwpH0YEflSkuizJEFW+J5dTaxZ/Jf5U5s9VjY+FI4TI5FqeSXVsIwRMpbryakVs6bVDDQtGtNJDS7pnlJJZpZC2c+Q6D5VC8Z8RR6TFGqnDXEoHLso5k/oPnU9c3yzxokXvsTjA7mst9oKsb0PK2cjYB2AFaiGSfou0HEtrd2Sqsq5YdjTCW03ZlVi26scs2uYrvEMjIAc4BrXuGblrmzXe25ivPNDXvSFkbfRIgJbr2quzXTWlxuH3TVu1myYvu7CoLULBXh5AZqU4u7RWMlVMSGupgdKFR/8ARv8AZFCk2kNrEuOt3f2S9jKsCMgVbI/aLbWenj7am0qMZB+98BWS61riLcv4cguCv3W7Cq1eahLeHLuxHrXqRjTbPHjBt2Xzjf2mahrkRtbIta6eBho1b3pv7x8vTp55rNribxpC5Oc9T60srYFNZ12vkdDzpmzoSN09ivHSXmnx8LanJsvbcf7DIx/3qj+H8QOnmPhWpXdhZ6zAplQCVRycfeFeO4JZIpUmhkaOWNgyMpwVI5gg16G9mvH6a1pz/b2CahZ85wo/3iHqwHx7efypXC0G2naJDWeHzZqTKp8LPuyjp9e3zqCmtYlG0ySf91XLUm13XdNLWF9FpCyDMYa3Wcuv9vPIZ9OnrVRv9D1axt/Huo0YBf3jW7bkB8wOoB5HpyzipPG0jpx5tnTITWeI4uH5tNjRd5knBk580iH3m+NTXtG03THS1v5pFRLsff6qrdj6BueD0zWW8TW9zd8QRxMWUOuxW68icH9QPpXOMtYe+1CWO0LfZUKoHY83RBtQeigZ5dySTzPK8cScFZHLNqTCXmkS2d34ikSQN0dTkVeuD1dYQCCKzGy1aWLluJHcHmDV94N4psmIt7tfBbs45j/1SPA11C/s9F2ubdZozkVW7618B8MPdq3QPDcwiW2lSWM9GRgwNMdWsxLETjtUXEdSKn4aeQoUudPbPU0Kn+sfcyeSV5DzY/CiCkg3nSi+hyK7LICyntQkj3pj6UQcq74hUZxmtRhthlfBHOpbhzWrnh/WrbU7UB2hbLRscCRe6n4/5HtTMOrHd1GMMvmPSiOu08jkHmD5iigHrjRb611bSba/06Xfa3KB426Y8wR2IOR8RWY2vF5/anWrGWwvFubxmhZbi7ykWzK+6u3n58utQPsT4zGj6i2g6hLiwvWzCzHlFN5fBv1xVx9ovC1wuppxJpiCQxqGulUZYbOYcdzyGCBz70+NKVpgtxaaBf8ABser8PWt3EPD1CPxmhkxyBYbQT8MBh6isTvrK40+e50+7Urc2jmKRfMdjXqPR9s9nC8TnwUVogmMc1Yqc/NTWQ+3TR1sNbsNZhQ+DeIYJz23r0z6kH/xpIvWgzezbMlUANgnBpSG4eGVXUkMprs8fvn0ptnmKo3QF0vui8SSaHdxXiEm0m2i7gHQjs4HmPzFatPJHPbLLCwaN13Kw7g159glBgVWPuspjPy6frWp+zPU2v8Aht7STG+yfZ1z7p5j+dTyL2aP0TOyhSxTnQqNj0efAaOp5+tEXHlRwFPUYqq6AWBBGa4eYoqjaeuQe1dBxyp0gWJA7Wp1HiRdvIZPunyP+RprKOeaNE4HJvunkaV+THW3K3IlSD8CDXpL2XcUrxTw4Irtg15bjwblfPyb4MB9Qa85ygyJu/GuA3qPOpjgXiSThbiGG/GWt2/d3MY/FGSM49RgEfCg+GPSfC+oPfae8VxyvLKZ7W5U9dynk3+JdrfOmPtE0L9ouEr6yRczqniwf315j68x86eWNqp1waxYOr2uo2qi4KdHdcGKQfFSwPwWpsrjnRAeOxuaMZ5OnJgetISr3Aq+e1fh39nuLZJoo9tlqOZEx0DE+8Pqc1SpE2nB7Uydo3hhLf3ldO+Mr8RVo9nmsHTNakR2xDcAK47dev51VIyYplI7HNLxuLa+5EheXTrim9dMzfinM8zQqqw8aJ4Me+2y20ZI7mu1D9bNuY4KUQq2AxxSddBx2rJ0xxVoXUbl94elFD8sHtQVmz7hIPlmgzBgd64fzprrwAM53Jmk1ODQU9RQXrRu+mHCPtAbGcciPMUWRccweR6GigkHlQzj3fpRAbh7BuK/tVvJwzfSEy26mS0Y9Wjz7yfInI9CfKtU0xLxbJU1GRJbhWcF0GAy7jtJHntxn1ryPo2p3OjavaalZNtntZRIvPrjqD6EZHzr1toGp2+t6TaalZtmC5iEij+rnqD6g5HypfBiue0/hkcS8LXEUSg3luPGtz33DqPmMivNgHiRBmGGHJh617Bl93615v8Aajw6OHuL7gQIVstQBuYfJWz76/I/kRRRmUaZdoU+XKj3S8oJOzJj6UeZcqw79qISzWzZ5iMjA+dP5QpILaRFRi9mHLpnpQpsuoqFA2AYHlXab4gpkXXQM0UUZTg1CLKncA98fGj+8B75DD40NoYUmVA701ewHDyblQHWuYOM10daReQinauN09aNj3aIaqxTmedbh/8AnviEyW17w/PJzhP2i2BPPaThx8jg/wCI1hxqc4I1tuH+KNP1LdtjjlCzc+sbcm/I5+VTCetrghkyCCOtZp7d9OFxwpDqCgb7G4Vt2PwP7pH1K1oWm2MVnp6wW7ExAuU55wpYsAPQZxVb45t/tvB2sQY3GS1cgHzHMfmKZLgtnmt2zzHWkTLuhkVRgEZrivmNKQ3YUjzFPdI1Bcj+saFFoVDYY5RqLXRQQQ6sQeVH2o/OkhRh1qidqgBpSu3C0kKB61ykb6EWDZWimuLXKrtaACuV2uVNhPUfsw19dV4CsJ5HLTW8f2aXJydychn1K7T86kJ/31jcxPzyrA/A1mPsDmkaw4ht2YmJHtnVfJm3gn5hR9K0sk/vvVDVYeCcvJ5YIMTPGeqMR9DTdqeX3/HXf/Vf9TTNqST+IyC0KFCpDH//2Q==" class="rounded" alt="...">
            </div>
            <h3>Musa Kwankwaso</h3>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
    </!--div-->

</asp:Content>
