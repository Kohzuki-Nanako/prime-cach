import React from "react";
import title from "./media/title1.png"
import poster from "./media/poster.png"
import icon from "./media/スクリーンショット 2020-08-21 1.14.30.png"
import start1 from "./media/スクリーンショット 2020-08-16 2.51.34.png"
import start2 from "./media/スクリーンショット 2020-08-16 2.52.01.png"
import game from "./media/スクリーンショット 2020-08-16 2.53.10.png"
import gameOver from "./media/スクリーンショット 2020-08-16 2.54.04.png"
import smash1 from "./media/IMG_2295.PNG"
import smash2 from "./media/スクリーンショット 2020-08-21 12.57.24.png"
import smash3 from "./media/スクリーンショット 2020-08-21 12.58.22.png"


const App = () => {
　const today = new Date();
  const year = today.getFullYear();
  const month = today.getMonth()+1;
  const date = today.getDate(); 
  const time = [today.getHours(),today.getMinutes()];  
  return (
    <div>
     <section>
     <div class="container is-fluid">
     <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="https://bulma.io">
            <svg width="120" height="40">
                <defs>
                    <linearGradient id="myGradient1" gradientTransform="rotate(90)">
                        <stop offset="5%"  stop-color="#5ee7df" />
                        <stop offset="95%" stop-color="#b490ca" />
                    </linearGradient>
                    <linearGradient id="myGradient2" gradientTransform="rotate(90)">
                        <stop offset="5%"  stop-color="gold" />
                        <stop offset="95%" stop-color="pink" />
                    </linearGradient>
                    <linearGradient id="myGradient3" gradientTransform="rotate(90)">
                        <stop offset="5%"  stop-color="#fccb90" />
                        <stop offset="95%" stop-color="#d57eeb" />
                    </linearGradient>
                    <linearGradient id="myGradient4" gradientTransform="rotate(90)">
                        <stop offset="5%"  stop-color="yellow" />
                        <stop offset="95%" stop-color="springgreen" />
                    </linearGradient>
                    <linearGradient id="myGradient5" gradientTransform="rotate(90)">
                        <stop offset="30%"  stop-color="lightpink" />
                        <stop offset="70%" stop-color="cyan" />
                    </linearGradient>
                </defs>
                <g transform = "scale(0.08)">
                    <circle cx="110" cy="100" r="100" fill="url('#myGradient1')" opacity="0.5"/>
                    <circle cx="300" cy="200" r="80" fill="url('#myGradient2')" opacity="0.5"/>
                    <circle cx="120" cy="200" r="30" fill="url('#myGradient3')" opacity="0.7"/>
                    <circle cx="120" cy="360" r="120" fill="url('#myGradient4')" opacity="0.5"/>
                    <circle cx="300" cy="450" r="40" fill="url('#myGradient5')" opacity="0.5"/>
                </g>
                <g transform = "scale(0.09,0.16)">
                    <text x={440} y={220} fill="black" stroke="black" stroke-width="15" font-size="200" font-family="'Comic Sans MS', sans-serif">PRIME</text>
                </g>
             </svg>
            </a>
        </div>
        <div id="navbarBasicExample" class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item" href="https://Kohzuki-Nanako.github.io/prime-catch/">
                    Home
                </a>
                <a class="navbar-item" href="https://bulma.io/documentation/overview/start/">
                     企画書
                </a>
                <a class="navbar-item" href="https://bulma.io/documentation/overview/start/">
                     仕様書
                </a>
                <a class="navbar-item" href="https://bulma.io/documentation/overview/start/">
                     ポスター
                </a>
            </div>
            <div class="navbar-end">
             <div class="navbar-item">
                <div class="field is-grouped">
                    <p class="control">
                        <a class="bd-tw-button button" data-social-network="Twitter" data-social-action="tweet" data-social-target="https://Kohzuki-Nanako.github.io/prime-catch/" target="_blank" href="https://twitter.com/intent/tweet?text=簡単短時間で学習ゲーム！？Prime Catcher！であそぼう&amp;hashtags=primecatcher&amp;url=https://Kohzuki-Nanako.github.io/prime-catch/">
                            <span class="icon">
                                <i class="fab fa-twitter"></i>
                            </span>
                            <span>
                                Tweet
                            </span>
                        </a>
                    </p>
                    <p class="control">
                        <a class="button is-primary" href="./src/prime.zip"　download="prime.zip">
                        <span class="icon">
                            <i class="fas fa-download"></i>
                        </span>
                        <span>Download</span>
                        </a>
                    </p>
                </div>
             </div>
            </div>
        </div>
     </nav>
     </div>
     </section>
      <section class="hero">
        <div class="hero-body">            
        <figure class="image is-400x80">
            <img src={title} alt ="title"/>
        </figure>
         
        </div>
      </section>
      <section>
        <div class="container is-fluid">
            <div class="notification">
                <div class="columns is-vcentered">
                    <div class="column is-4">
                    <p class="title">Please Tweet Game</p>
                        <div class="card">
                            <div class="card-image">
                                <a href="https://twitter.com/intent/tweet?text=簡単短時間で学習ゲーム！？Prime Catcher！であそぼう&amp;hashtags=primecatcher&amp;url=https://Kohzuki-Nanako.github.io/prime-catch/">
                                <figure class="image is-square">
                                  <img src={poster} alt="ポスター"/>
                                </figure>
                                </a>
                            </div>
                        <div class="card-content">
                            <div class="media">
                                <div class="media-left">
                                    <figure class="image is-48x48">
                                    <img src={icon} alt="girl"/>
                                    </figure>
                                </div>
                             <div class="media-content">
                                <p class="title is-4">John Smith</p>
                                <p class="subtitle is-6">@johnsmith</p>
                            </div>
                        </div>

                        <div class="content">
                            短時間で頭が良くなる！？学習型ゲーム「Prime Catcher!」を今すぐPlay！<br/>
                             <a href="https://github.com/Kohzuki-Nanako/prime-catch.git"><font size="4" color="#0000ff">@primeCatcher</font></a>　
                             <a href="https://github.com/Kohzuki-Nanako/prime-catch.git"><font size="4" color="#0000ff">#prime</font></a>　
                             <a href="https://github.com/Kohzuki-Nanako/prime-catch.git"><font size="4" color="#0000ff">#素数</font></a>　
                             <a href="https://github.com/Kohzuki-Nanako/prime-catch.git"><font size="4" color="#0000ff">#学習ゲーム</font></a>　
                             <a href="https://github.com/Kohzuki-Nanako/prime-catch.git"><font size="4" color="#0000ff">#短時間</font></a>　
                             <br/>
                            <time datetime="2016-1-1">{time[0]} : {time[1]}　PM　{month}/{date} {year}</time>
                        </div>
                    </div>
                    </div>
                    <br/><br/><br/><br/><br/><br/><br/><br/>
                    </div>
                    <div class="column">
                        <p class="title">About Game</p>
                        <svg width="500" height="80">
                            <defs>
                                <linearGradient id="myGradient" gradientTransform="rotate(90)">
                                    <stop offset="5%"  stop-color="lime" />
                                     <stop offset="95%" stop-color="skyblue" />
                                 </linearGradient>
                            </defs>
                            <circle cx="30" cy="30" r="30" fill="url('#myGradient')" opacity="0.5"/>
                            <text x = {160} y = {45} textAnchor = "middle" fill = "silver" stroke="silver" stroke-width="1" opacity="0.3" fontSize = "30">1.　どんなゲーム？</text>
                            <text x = {150} y = {40} textAnchor = "middle" fill = "black" fontSize = "30">1.　どんなゲーム？</text>
                            <line x1 ={0} y1 = {70} x2={500} y2 ={70} stroke="silver" /> 
                        </svg>
                        <p class="bd-notification is-primary">
                            このゲームは、素数の書かれたボールを制限時間30秒でたくさん集めて、その獲得を競うものとなっています。<br/>
                            落ちてくるボールの速度はランダムで変わるので集中力が高められるほか、素数かどうかの瞬時の判断力が高められます。<br/>

                         </p>
                         <svg width="500" height="80">
                            <defs>
                                <linearGradient id="myGradient" gradientTransform="rotate(90)">
                                    <stop offset="5%"  stop-color="lime" />
                                     <stop offset="95%" stop-color="skyblue" />
                                 </linearGradient>
                            </defs>
                            <circle cx="30" cy="45" r="30" fill="url('#myGradient')" opacity="0.5"/>
                            <text x = {150} y = {60} textAnchor = "middle" fill = "silver" stroke="silver" stroke-width="1" opacity="0.3" fontSize = "30">2.　誰でもできる</text>
                            <text x = {140} y = {55} textAnchor = "middle" fill = "black" fontSize = "30">2.　誰でもできる</text>
                            <line x1 ={0} y1 = {80} x2={500} y2 ={80} stroke="silver" /> 
                        </svg>
                        <p class="bd-notification is-primary">
                            操作方法は、マウスクリック１回、キーボードクリック１回、あとは左右のマウス操作だけで遊ぶことができます。<br/>
                            したがって、小学生低学年からお年寄りのどの年代の方にも遊んでいただけます。<br/>
                         </p>

                         <svg width="500" height="80">
                            <defs>
                                <linearGradient id="myGradient" gradientTransform="rotate(90)">
                                    <stop offset="5%"  stop-color="lime" />
                                     <stop offset="95%" stop-color="skyblue" />
                                 </linearGradient>
                            </defs>
                            <circle cx="30" cy="40" r="30" fill="url('#myGradient')" opacity="0.5"/>
                            <text x = {90} y = {55} textAnchor = "middle" fill = "silver" stroke="silver" stroke-width="1" opacity="0.3" fontSize = "30">3.　参考</text>
                            <text x = {80} y = {50} textAnchor = "middle" fill = "black" fontSize = "30">3.　参考</text>
                            <line x1 ={0} y1 = {75} x2={500} y2 ={75} stroke="silver" /> 
                        </svg>
                        <p class="bd-notification is-primary">
                            このゲームは、Panasonic社が発売している「Panasonic Prime　Smash！」というアプリを模倣して作られました。<br/>
                            このゲームと「Prime Smash!」さんの違いは、より単純で簡単なゲームだというところです。<br/>
                            公式ページは、
                            <a href="https://www.panasonic.com/jp/corporate/profile/apps/primesmash.html">
                                <font size="4" color="#0000ff">コチラ</font>
                            </a>
                            <div class="columns is-gapless">
                                <div class="column">
                                    <a href="https://apps.apple.com/jp/app/panasonic-prime-smash/id428236791">  
                                        <figure class="image is-128x128">
                                            <img src = {smash1} alt ="smash1"/>
                                        </figure>
                                    </a>
                                </div>
                                <div class="column is-three-fifths">
                                    <br/>
                                    <font size="4" color="black" fontWweight="bolder" >Panasonic Prime Smash!</font><br/>
                                    <font size="3" color="gray">素数を探すパズルアクション</font><br/>
                                    <font size="3" color="#0000ff">Panasonic　Corporation</font>
                                </div>
                            </div>
                         </p>
                         
                         <div class="columns  ">
                         <div class="column has-text-centered">
                             <figure class="image is-3by2">
                              <img src = {smash2} alt ="smash2"/>
                             </figure>
                         </div>
                         <div class="column">
                            <figure class="image is-3by2">
                                <img src = {smash3} alt ="smash3"/>
                            </figure>
                         </div>
                        </div>
                    </div>
                    <div class="column has-text-centered">
                        <p class="title">Game description</p>  
                        <div class="columns is-gapless ">
                            <div class="column">
                              【スタート画面】<br/><br/>
                              どこでもいいので、マウスで画面を１度クリックしてください。<br/>
                              次の画面に移ります。
                            </div>
                            <div class="column ">
                                <figure class="image is-128x128">
                                    <img src = {start1} alt ="start1"/>
                                </figure>
                            </div>  
                        </div>
                        <div class="columns is-gapless">
                            <div class="column">
                                <br/>
                                <figure class="image is-128x128">
                                    <img src = {start2} alt ="start2"/>
                                </figure>
                            </div>
                            <div class="column">
                              <br/>
                             【遷移画面】<br/><br/>
                             ゲームが始まるまでに遷移画面として<br/>「Are you ready?」「Start!!」と書かれた画面が表示されます。
                            </div>  
                        </div>

                        <div class="columns is-gapless">
                            <div class="column">
                             【プレイ画面】<br/><br/>
                             実際にゲームをプレイしている画面です。<br/>
                             上から数字が書かれているボールが落ちてくるのでその数字が素数であるならば、かごでキャッチします。
                            </div> 
                            <div class="column">
                            <br/>
                                <figure class="image is-128x128">
                                    <img src = {game} alt ="game"/>
                                </figure>
                            </div>
                        </div>

                        <div class="columns is-gapless">
                            <div class="column">
                                <br/>
                                <figure class="image is-128x128">
                                    <img src = {gameOver} alt ="Over"/>
                                </figure>
                            </div>
                            <div class="column">
                             【ゲーム終了画面】<br/><br/>
                             ゲームが終了した時に出てくる画面です。<br/>
                             青文字はスコアです。<br/>
                             また、最大コンボ数や、獲得した素数のボールから覚えて欲しい素数をコンピューターが選んで表示します。
                            </div>   
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
      </section>
  
      <footer class="footer">
        <div class="content has-text-centered">
         <p>
            <strong>©︎2020 Prime-Catcher</strong> by <i className="fab fa-github fa-2x"></i><a href="https://github.com/Kohzuki-Nanako/prime-catch">Github</a>        
        </p>
        </div>
    　</footer>
    </div>

  );
};

export default App;