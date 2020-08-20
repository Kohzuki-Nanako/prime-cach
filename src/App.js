import React from "react";
import title from "./media/title2.png"

const App = () => {
  return (
    <div>
     <section>
     <div class="container is-fluid">
     <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="https://bulma.io">
                <img src="https://bulma.io/images/bulma-logo.png" alt="Bulma: a modern CSS framework based on Flexbox" width="112" height="28"/>
            </a>
        </div>
        <div id="navbarBasicExample" class="navbar-menu">
            <div class="navbar-start">
                <a class="navbar-item" href="https://bulma.io/">
                    Home
                </a>
                <a class="navbar-item" href="https://bulma.io/documentation/overview/start/">
                     Docs
                </a>
            </div>
            <div class="navbar-end">
             <div class="navbar-item">
                <div class="field is-grouped">
                    <p class="control">
                        <a class="bd-tw-button button" data-social-network="Twitter" data-social-action="tweet" data-social-target="https://bulma.io" target="_blank" href="https://twitter.com/intent/tweet?text=Bulma: a modern CSS framework based on Flexbox&amp;hashtags=bulmaio&amp;url=https://bulma.io&amp;via=jgthms">
                            <span class="icon">
                                <i class="fab fa-twitter"></i>
                            </span>
                            <span>
                                Tweet
                            </span>
                        </a>
                    </p>
                    <p class="control">
                        <a class="button is-primary" href="https://github.com/jgthms/bulma/releases/download/0.9.0/bulma-0.9.0.zip">
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
        <figure class="image is-500x80">
            <img src={title} alt ="title"/>
        </figure>
         
        </div>
      </section>
      <section>
        <div class="container is-fluid">
            <div class="notification">
                This container is <strong>fluid</strong>: it will have a 32px gap on either side, on any
                viewport size.
                <div class="columns is-vcentered">
                    <div class="column is-4">
                        <div class="card">
                            <div class="card-image">
                                <figure class="image is-square">
                                  <img src="https://bulma.io/images/placeholders/1280x960.png" alt="Placeholder image"/>
                                </figure>
                            </div>
                        <div class="card-content">
                            <div class="media">
                                <div class="media-left">
                                    <figure class="image is-48x48">
                                        <img src="https://bulma.io/images/placeholders/96x96.png" alt="Placeholder image"/>
                                    </figure>
                                </div>
                             <div class="media-content">
                                <p class="title is-4">John Smith</p>
                                <p class="subtitle is-6">@johnsmith</p>
                            </div>
                        </div>

                        <div class="content">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                            Phasellus nec iaculis mauris. <a>@bulmaio</a>.
                            <a href="#">#css</a> <a href="#">#responsive</a>
                            <br/>
                            <time datetime="2016-1-1">11:09 PM - 1 Jan 2016</time>
                        </div>
                    </div>
                    </div>
                    </div>
                    <div class="column">
                        <p class="bd-notification is-primary">Second column with more content. This is so you can see the vertical alignment.</p>
                        <svg width="120" height="120">
                            <defs>
                                <linearGradient id="myGradient" gradientTransform="rotate(90)">
                                    <stop offset="5%"  stop-color="gold" />
                                     <stop offset="95%" stop-color="red" />
                                 </linearGradient>
                            </defs>
                            <circle cx="60" cy="60" r="60" fill="url('#myGradient')" opacity="0.5"/>
                        </svg>
                    </div>
                </div>
            </div>
            
        </div>
      </section>
  
      <footer class="footer">
        <div class="content has-text-centered">
         <p>
            <strong>©︎2020 Prime-Cacther</strong> by <i className="fab fa-github fa-2x"></i><a href="https://github.com/Kohzuki-Nanako/prime-catch">Github</a>        
        </p>
        </div>
    　</footer>
    </div>

  );
};

export default App;