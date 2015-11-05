


<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=1020">
    
    
    <title>char-rnn/train.lua at master · karpathy/char-rnn · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="karpathy/char-rnn" name="twitter:title" /><meta content="char-rnn - Multi-layer Recurrent Neural Networks (LSTM, GRU, RNN) for character-level language models in Torch" name="twitter:description" /><meta content="https://avatars0.githubusercontent.com/u/241138?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars0.githubusercontent.com/u/241138?v=3&amp;s=400" property="og:image" /><meta content="karpathy/char-rnn" property="og:title" /><meta content="https://github.com/karpathy/char-rnn" property="og:url" /><meta content="char-rnn - Multi-layer Recurrent Neural Networks (LSTM, GRU, RNN) for character-level language models in Torch" property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    
    <meta name="pjax-timeout" content="1000">
    

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="68E5D1C7:5924:680F7E4:563ABA97" name="octolytics-dimension-request_id" />

<meta content="Rails, view, blob#show" data-pjax-transient="true" name="analytics-event" />


  <meta class="js-ga-set" name="dimension1" content="Logged Out">
    <meta class="js-ga-set" name="dimension4" content="Current repo nav">




    <meta name="is-dotcom" content="true">
        <meta name="hostname" content="github.com">
    <meta name="user-login" content="">

      <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#4078c0">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta content="2aed2097e44a1b95a740b05bfecc8012b4826e86" name="form-nonce" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-86a769f56cc726044f1f704648f3463fe08f980b4654264d26db63e989d1c28e.css" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2-8660e134f8078fe75046e2c8cf09a2fd65d94446a9c3d11ecf672cb4c5842b6a.css" media="all" rel="stylesheet" />
    
    
    


    <meta http-equiv="x-pjax-version" content="765df51354a35721fb3972fedc936222">

      
  <meta name="description" content="char-rnn - Multi-layer Recurrent Neural Networks (LSTM, GRU, RNN) for character-level language models in Torch">
  <meta name="go-import" content="github.com/karpathy/char-rnn git https://github.com/karpathy/char-rnn.git">

  <meta content="241138" name="octolytics-dimension-user_id" /><meta content="karpathy" name="octolytics-dimension-user_login" /><meta content="36027077" name="octolytics-dimension-repository_id" /><meta content="karpathy/char-rnn" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="36027077" name="octolytics-dimension-repository_network_root_id" /><meta content="karpathy/char-rnn" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/karpathy/char-rnn/commits/master.atom" rel="alternate" title="Recent Commits to char-rnn:master" type="application/atom+xml">

  </head>


  <body class="logged_out   env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>

    
    
    



      
      <div class="header header-logged-out" role="banner">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions" role="navigation">
        <a class="btn btn-primary" href="/join" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
      <a class="btn" href="/login?return_to=%2Fkarpathy%2Fchar-rnn%2Fblob%2Fmaster%2Ftrain.lua" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
    </div>

    <div class="site-search repo-scope js-site-search" role="search">
      <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/karpathy/char-rnn/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/karpathy/char-rnn/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      aria-label="Search this repository"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
    </div>

      <ul class="header-nav left" role="navigation">
          <li class="header-nav-item">
            <a class="header-nav-link" href="/explore" data-ga-click="(Logged out) Header, go to explore, text:explore">Explore</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/features" data-ga-click="(Logged out) Header, go to features, text:features">Features</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://enterprise.github.com/" data-ga-click="(Logged out) Header, go to enterprise, text:enterprise">Enterprise</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/pricing" data-ga-click="(Logged out) Header, go to pricing, text:pricing">Pricing</a>
          </li>
      </ul>

  </div>
</div>



    <div id="start-of-content" class="accessibility-aid"></div>

    <div id="js-flash-container">
</div>


    <div role="main" class="main-content">
        <div itemscope itemtype="http://schema.org/WebPage">
    <div class="pagehead repohead instapaper_ignore readability-menu">

      <div class="container">

        <div class="clearfix">
          

<ul class="pagehead-actions">

  <li>
      <a href="/login?return_to=%2Fkarpathy%2Fchar-rnn"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <span class="octicon octicon-eye"></span>
    Watch
  </a>
  <a class="social-count" href="/karpathy/char-rnn/watchers">
    159
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fkarpathy%2Fchar-rnn"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <span class="octicon octicon-star"></span>
    Star
  </a>

    <a class="social-count js-social-count" href="/karpathy/char-rnn/stargazers">
      2,050
    </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fkarpathy%2Fchar-rnn"
        class="btn btn-sm btn-with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-repo-forked"></span>
        Fork
      </a>

    <a href="/karpathy/char-rnn/network" class="social-count">
      474
    </a>
  </li>
</ul>

          <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public ">
  <span class="mega-octicon octicon-repo"></span>
  <span class="author"><a href="/karpathy" class="url fn" itemprop="url" rel="author"><span itemprop="title">karpathy</span></a></span><!--
--><span class="path-divider">/</span><!--
--><strong><a href="/karpathy/char-rnn" data-pjax="#js-repo-pjax-container">char-rnn</a></strong>

  <span class="page-context-loader">
    <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
  </span>

</h1>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline ">
        <div class="repository-sidebar clearfix">
          
<nav class="sunken-menu repo-nav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container"
     data-issue-count-url="/karpathy/char-rnn/issues/counts">
  <ul class="sunken-menu-group">
    <li class="tooltipped tooltipped-w" aria-label="Code">
      <a href="/karpathy/char-rnn" aria-label="Code" aria-selected="true" class="js-selected-navigation-item selected sunken-menu-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /karpathy/char-rnn">
        <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Issues">
        <a href="/karpathy/char-rnn/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /karpathy/char-rnn/issues">
          <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
          <span class="js-issue-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

    <li class="tooltipped tooltipped-w" aria-label="Pull requests">
      <a href="/karpathy/char-rnn/pulls" aria-label="Pull requests" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g p" data-selected-links="repo_pulls /karpathy/char-rnn/pulls">
          <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull requests</span>
          <span class="js-pull-replace-counter"></span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

      <li class="tooltipped tooltipped-w" aria-label="Wiki">
        <a href="/karpathy/char-rnn/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item" data-hotkey="g w" data-selected-links="repo_wiki /karpathy/char-rnn/wiki">
          <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
  </ul>
  <div class="sunken-menu-separator"></div>
  <ul class="sunken-menu-group">

    <li class="tooltipped tooltipped-w" aria-label="Pulse">
      <a href="/karpathy/char-rnn/pulse" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-selected-links="pulse /karpathy/char-rnn/pulse">
        <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>

    <li class="tooltipped tooltipped-w" aria-label="Graphs">
      <a href="/karpathy/char-rnn/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-selected-links="repo_graphs repo_contributors /karpathy/char-rnn/graphs">
        <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
        <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>    </li>
  </ul>


</nav>

            <div class="only-with-full-nav">
                
<div class="js-clone-url clone-url open"
  data-protocol-type="http">
  <h3 class="text-small text-muted"><span class="text-emphasized">HTTPS</span> clone URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/karpathy/char-rnn.git" readonly="readonly" aria-label="HTTPS clone URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="js-clone-url clone-url "
  data-protocol-type="subversion">
  <h3 class="text-small text-muted"><span class="text-emphasized">Subversion</span> checkout URL</h3>
  <div class="input-group js-zeroclipboard-container">
    <input type="text" class="input-mini text-small text-muted input-monospace js-url-field js-zeroclipboard-target"
           value="https://github.com/karpathy/char-rnn" readonly="readonly" aria-label="Subversion checkout URL">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>



<div class="clone-options text-small text-muted">You can clone with
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone" class="inline-form js-clone-selector-form " data-form-nonce="2aed2097e44a1b95a740b05bfecc8012b4826e86" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="JfR9737Ad8dWkwf++dQWNquYId8bQxkxJSlm89vDXz+dLc2fr1I9b6McrPsLL1zxJB/YzM3/hJw6vmcmt16HQA==" /></div><button class="btn-link js-clone-selector" data-protocol="http" type="submit">HTTPS</button></form> or <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone" class="inline-form js-clone-selector-form " data-form-nonce="2aed2097e44a1b95a740b05bfecc8012b4826e86" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="iQxMwqBtYUbKt4obQgCxJP7H1BWYNBz0/QZ8PGvTVnUn+YBZYwMcvaQFdQOMScnWWBkdHvgAWdIwqRWodsx4nw==" /></div><button class="btn-link js-clone-selector" data-protocol="subversion" type="submit">Subversion</button></form>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</div>
  <a href="https://windows.github.com" class="btn btn-sm sidebar-button" title="Save karpathy/char-rnn to your computer and use it in GitHub Desktop." aria-label="Save karpathy/char-rnn to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-desktop-download"></span>
    Clone in Desktop
  </a>

              <a href="/karpathy/char-rnn/archive/master.zip"
                 class="btn btn-sm sidebar-button"
                 aria-label="Download the contents of karpathy/char-rnn as a zip file"
                 title="Download the contents of karpathy/char-rnn as a zip file"
                 rel="nofollow">
                <span class="octicon octicon-cloud-download"></span>
                Download ZIP
              </a>
            </div>
        </div>
        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>

          

<a href="/karpathy/char-rnn/blob/106a75c6e2fc64eaf69290871e7231466c6c139e/train.lua" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:68ed16f5672b96255035c0fedc0ffe99 -->

  <div class="file-navigation js-zeroclipboard-container">
    
<div class="select-menu js-menu-container js-select-menu left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    title="master"
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/karpathy/char-rnn/blob/master/train.lua"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

    <div class="btn-group right">
      <a href="/karpathy/char-rnn/find/master"
            class="js-show-file-finder btn btn-sm empty-icon tooltipped tooltipped-nw"
            data-pjax
            data-hotkey="t"
            aria-label="Quickly jump between files">
        <span class="octicon octicon-list-unordered"></span>
      </a>
      <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </div>

    <div class="breadcrumb js-zeroclipboard-target">
      <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/karpathy/char-rnn" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">char-rnn</span></a></span></span><span class="separator">/</span><strong class="final-path">train.lua</strong>
    </div>
  </div>


  <div class="commit-tease">
      <span class="right">
        <a class="commit-tease-sha" href="/karpathy/char-rnn/commit/82baeead57e3dd3653b5b0f63fc6576fd6f14965" data-pjax>
          82baeea
        </a>
        <time datetime="2015-10-11T20:44:37Z" is="relative-time">Oct 11, 2015</time>
      </span>
      <div>
        <img alt="@karpathy" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/241138?v=3&amp;s=40" width="20" />
        <a href="/karpathy" class="user-mention" rel="author">karpathy</a>
          <a href="/karpathy/char-rnn/commit/82baeead57e3dd3653b5b0f63fc6576fd6f14965" class="message" data-pjax="true" title="speeding up the code by about 15% with faster indexing. I did not imagine this would have such a large effect. Thank you @vseledkin for pointing this out">speeding up the code by about 15% with faster indexing. I did not ima…</a>
      </div>

    <div class="commit-tease-contributors">
      <a class="muted-link contributors-toggle" href="#blob_contributors_box" rel="facebox">
        <strong>4</strong>
         contributors
      </a>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="karpathy" href="/karpathy/char-rnn/commits/master/train.lua?author=karpathy"><img alt="@karpathy" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/241138?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="guillitte" href="/karpathy/char-rnn/commits/master/train.lua?author=guillitte"><img alt="@guillitte" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/13494525?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="hughperkins" href="/karpathy/char-rnn/commits/master/train.lua?author=hughperkins"><img alt="@hughperkins" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/123560?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="bomattin" href="/karpathy/char-rnn/commits/master/train.lua?author=bomattin"><img alt="@bomattin" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/10439818?v=3&amp;s=40" width="20" /> </a>


    </div>

    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list" data-facebox-id="facebox-description">
          <li class="facebox-user-list-item">
            <img alt="@karpathy" height="24" src="https://avatars3.githubusercontent.com/u/241138?v=3&amp;s=48" width="24" />
            <a href="/karpathy">karpathy</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@guillitte" height="24" src="https://avatars1.githubusercontent.com/u/13494525?v=3&amp;s=48" width="24" />
            <a href="/guillitte">guillitte</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@hughperkins" height="24" src="https://avatars2.githubusercontent.com/u/123560?v=3&amp;s=48" width="24" />
            <a href="/hughperkins">hughperkins</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@bomattin" height="24" src="https://avatars1.githubusercontent.com/u/10439818?v=3&amp;s=48" width="24" />
            <a href="/bomattin">bomattin</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="btn-group">
      <a href="/karpathy/char-rnn/raw/master/train.lua" class="btn btn-sm " id="raw-url">Raw</a>
        <a href="/karpathy/char-rnn/blame/master/train.lua" class="btn btn-sm js-update-url-with-hash">Blame</a>
      <a href="/karpathy/char-rnn/commits/master/train.lua" class="btn btn-sm " rel="nofollow">History</a>
    </div>

        <a class="octicon-btn tooltipped tooltipped-nw"
           href="https://windows.github.com"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:windows">
            <span class="octicon octicon-device-desktop"></span>
        </a>

        <button type="button" class="octicon-btn disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <span class="octicon octicon-pencil"></span>
        </button>
        <button type="button" class="octicon-btn octicon-btn-danger disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <span class="octicon octicon-trashcan"></span>
        </button>
  </div>

  <div class="file-info">
      369 lines (333 sloc)
      <span class="file-info-divider"></span>
    15.3 KB
  </div>
</div>

  

  <div class="blob-wrapper data type-lua">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c">--[[</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c"></span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c">This file trains a character-level multi-layer RNN on text data</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c"></span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line"><span class="pl-c">Code is based on implementation in </span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line"><span class="pl-c">https://github.com/oxford-cs-ml-2015/practical6</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line"><span class="pl-c">but modified to have multi-layer support, GPU support, as well as</span></td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line"><span class="pl-c">many other common model/optimization bells and whistles.</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line"><span class="pl-c">The practical6 code is in turn based on </span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line"><span class="pl-c">https://github.com/wojciechz/learning_to_execute</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line"><span class="pl-c">which is turn based on other stuff in Torch, etc... (long lineage)</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line"><span class="pl-c"></span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line"><span class="pl-c">]]</span><span class="pl-c">--</span></td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>torch<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>nn<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>nngraph<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>optim<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>lfs<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>util.OneHot<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>util.misc<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> CharSplitLMMinibatchLoader <span class="pl-k">=</span> <span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>util.CharSplitLMMinibatchLoader<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> model_utils <span class="pl-k">=</span> <span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>util.model_utils<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> LSTM <span class="pl-k">=</span> <span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>model.LSTM<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> GRU <span class="pl-k">=</span> <span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>model.GRU<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> RNN <span class="pl-k">=</span> <span class="pl-c1">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>model.RNN<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line">cmd <span class="pl-k">=</span> torch.<span class="pl-c1">CmdLine</span>()</td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">text</span>()</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">text</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>Train a character-level language model<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">text</span>()</td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">text</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>Options<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- data</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-data_dir<span class="pl-pds">&#39;</span></span>,<span class="pl-s"><span class="pl-pds">&#39;</span>data/tinyshakespeare<span class="pl-pds">&#39;</span></span>,<span class="pl-s"><span class="pl-pds">&#39;</span>data directory. Should contain the file input.txt with input data<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- model params</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-rnn_size<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">128</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>size of LSTM internal state<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-num_layers<span class="pl-pds">&#39;</span></span>, <span class="pl-c1">2</span>, <span class="pl-s"><span class="pl-pds">&#39;</span>number of layers in the LSTM<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-model<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>lstm<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>lstm,gru or rnn<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- optimization</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-learning_rate<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">2e-3</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>learning rate<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-learning_rate_decay<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">0.97</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>learning rate decay<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L44" class="blob-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-learning_rate_decay_after<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">10</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>in number of epochs, when to start decaying the learning rate<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L45" class="blob-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-decay_rate<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">0.95</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>decay rate for rmsprop<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L46" class="blob-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-dropout<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">0</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>dropout for regularization, used after each RNN hidden layer. 0 = no dropout<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L47" class="blob-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-seq_length<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">50</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>number of timesteps to unroll for<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L48" class="blob-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-batch_size<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">50</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>number of sequences to train on in parallel<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L49" class="blob-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-max_epochs<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">50</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>number of full passes through the training data<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L50" class="blob-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-grad_clip<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">5</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>clip gradients at this value<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L51" class="blob-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-train_frac<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">0.95</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>fraction of data that goes into train set<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L52" class="blob-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-val_frac<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">0.05</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>fraction of data that goes into validation set<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L53" class="blob-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-code blob-code-inner js-file-line">            <span class="pl-c">-- test_frac will be computed as (1 - train_frac - val_frac)</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-init_from<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span><span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>initialize network parameters from checkpoint at this path<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L55" class="blob-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- bookkeeping</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-seed<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">123</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>torch manual random number generator seed<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L57" class="blob-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-print_every<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">1</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>how many steps/minibatches between printing out the loss<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L58" class="blob-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-eval_val_every<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">1000</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>every how many iterations should we evaluate on validation data?<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L59" class="blob-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-checkpoint_dir<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>cv<span class="pl-pds">&#39;</span></span>, <span class="pl-s"><span class="pl-pds">&#39;</span>output directory where checkpoints get written<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L60" class="blob-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-savefile<span class="pl-pds">&#39;</span></span>,<span class="pl-s"><span class="pl-pds">&#39;</span>lstm<span class="pl-pds">&#39;</span></span>,<span class="pl-s"><span class="pl-pds">&#39;</span>filename to autosave the checkpont to. Will be inside checkpoint_dir/<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L61" class="blob-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-accurate_gpu_timing<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">0</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>set this flag to 1 to get precise timings when using GPU. Might make code bit slower but reports accurate timings.<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L62" class="blob-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- GPU/CPU</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-gpuid<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">0</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>which gpu to use. -1 = use CPU<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L64" class="blob-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">option</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>-opencl<span class="pl-pds">&#39;</span></span>,<span class="pl-c1">0</span>,<span class="pl-s"><span class="pl-pds">&#39;</span>use OpenCL (instead of CUDA)<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L65" class="blob-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-code blob-code-inner js-file-line">cmd:<span class="pl-c1">text</span>()</td>
      </tr>
      <tr>
        <td id="L66" class="blob-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L67" class="blob-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- parse input params</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-code blob-code-inner js-file-line">opt <span class="pl-k">=</span> cmd:<span class="pl-c1">parse</span>(arg)</td>
      </tr>
      <tr>
        <td id="L69" class="blob-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-code blob-code-inner js-file-line">torch.<span class="pl-c1">manualSeed</span>(opt.<span class="pl-smi">seed</span>)</td>
      </tr>
      <tr>
        <td id="L70" class="blob-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- train / val / test split for data, in fractions</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> test_frac <span class="pl-k">=</span> <span class="pl-c1">math.max</span>(<span class="pl-c1">0</span>, <span class="pl-c1">1</span> <span class="pl-k">-</span> (opt.<span class="pl-smi">train_frac</span> <span class="pl-k">+</span> opt.<span class="pl-smi">val_frac</span>))</td>
      </tr>
      <tr>
        <td id="L72" class="blob-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> split_sizes <span class="pl-k">=</span> {opt.<span class="pl-smi">train_frac</span>, opt.<span class="pl-smi">val_frac</span>, test_frac} </td>
      </tr>
      <tr>
        <td id="L73" class="blob-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L74" class="blob-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- initialize cunn/cutorch for training on the GPU and fall back to CPU gracefully</span></td>
      </tr>
      <tr>
        <td id="L75" class="blob-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-code blob-code-inner js-file-line"><span class="pl-k">if</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">&gt;=</span> <span class="pl-c1">0</span> <span class="pl-k">and</span> opt.<span class="pl-smi">opencl</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L76" class="blob-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> ok, cunn <span class="pl-k">=</span> <span class="pl-c1">pcall</span>(require, <span class="pl-s"><span class="pl-pds">&#39;</span>cunn<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L77" class="blob-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> ok2, cutorch <span class="pl-k">=</span> <span class="pl-c1">pcall</span>(require, <span class="pl-s"><span class="pl-pds">&#39;</span>cutorch<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L78" class="blob-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> <span class="pl-k">not</span> ok <span class="pl-k">then</span> <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>package cunn not found!<span class="pl-pds">&#39;</span></span>) <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> <span class="pl-k">not</span> ok2 <span class="pl-k">then</span> <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>package cutorch not found!<span class="pl-pds">&#39;</span></span>) <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L80" class="blob-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> ok <span class="pl-k">and</span> ok2 <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L81" class="blob-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>using CUDA on GPU <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">..</span> <span class="pl-s"><span class="pl-pds">&#39;</span>...<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L82" class="blob-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-code blob-code-inner js-file-line">        cutorch.<span class="pl-c1">setDevice</span>(opt.<span class="pl-smi">gpuid</span> <span class="pl-k">+</span> <span class="pl-c1">1</span>) <span class="pl-c">-- note +1 to make it 0 indexed! sigh lua</span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-code blob-code-inner js-file-line">        cutorch.<span class="pl-c1">manualSeed</span>(opt.<span class="pl-smi">seed</span>)</td>
      </tr>
      <tr>
        <td id="L84" class="blob-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L85" class="blob-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>If cutorch and cunn are installed, your CUDA toolkit may be improperly configured.<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L86" class="blob-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>Check your CUDA toolkit installation, rebuild cutorch and cunn, and try again.<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L87" class="blob-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>Falling back on CPU mode<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L88" class="blob-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-code blob-code-inner js-file-line">        opt.<span class="pl-smi">gpuid</span> <span class="pl-k">=</span> <span class="pl-k">-</span><span class="pl-c1">1</span> <span class="pl-c">-- overwrite user setting</span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L91" class="blob-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L92" class="blob-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- initialize clnn/cltorch for training on the GPU and fall back to CPU gracefully</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-code blob-code-inner js-file-line"><span class="pl-k">if</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">&gt;=</span> <span class="pl-c1">0</span> <span class="pl-k">and</span> opt.<span class="pl-smi">opencl</span> <span class="pl-k">==</span> <span class="pl-c1">1</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> ok, cunn <span class="pl-k">=</span> <span class="pl-c1">pcall</span>(require, <span class="pl-s"><span class="pl-pds">&#39;</span>clnn<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L95" class="blob-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> ok2, cutorch <span class="pl-k">=</span> <span class="pl-c1">pcall</span>(require, <span class="pl-s"><span class="pl-pds">&#39;</span>cltorch<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L96" class="blob-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> <span class="pl-k">not</span> ok <span class="pl-k">then</span> <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>package clnn not found!<span class="pl-pds">&#39;</span></span>) <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L97" class="blob-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> <span class="pl-k">not</span> ok2 <span class="pl-k">then</span> <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>package cltorch not found!<span class="pl-pds">&#39;</span></span>) <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L98" class="blob-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> ok <span class="pl-k">and</span> ok2 <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>using OpenCL on GPU <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">..</span> <span class="pl-s"><span class="pl-pds">&#39;</span>...<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L100" class="blob-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-code blob-code-inner js-file-line">        cltorch.<span class="pl-c1">setDevice</span>(opt.<span class="pl-smi">gpuid</span> <span class="pl-k">+</span> <span class="pl-c1">1</span>) <span class="pl-c">-- note +1 to make it 0 indexed! sigh lua</span></td>
      </tr>
      <tr>
        <td id="L101" class="blob-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-code blob-code-inner js-file-line">        torch.<span class="pl-c1">manualSeed</span>(opt.<span class="pl-smi">seed</span>)</td>
      </tr>
      <tr>
        <td id="L102" class="blob-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>If cltorch and clnn are installed, your OpenCL driver may be improperly configured.<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L104" class="blob-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>Check your OpenCL driver installation, check output of clinfo command, and try again.<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L105" class="blob-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>Falling back on CPU mode<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L106" class="blob-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-code blob-code-inner js-file-line">        opt.<span class="pl-smi">gpuid</span> <span class="pl-k">=</span> <span class="pl-k">-</span><span class="pl-c1">1</span> <span class="pl-c">-- overwrite user setting</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L108" class="blob-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L109" class="blob-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L110" class="blob-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- create the data loader class</span></td>
      </tr>
      <tr>
        <td id="L111" class="blob-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> loader <span class="pl-k">=</span> CharSplitLMMinibatchLoader.<span class="pl-c1">create</span>(opt.<span class="pl-smi">data_dir</span>, opt.<span class="pl-smi">batch_size</span>, opt.<span class="pl-smi">seq_length</span>, split_sizes)</td>
      </tr>
      <tr>
        <td id="L112" class="blob-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> vocab_size <span class="pl-k">=</span> loader.<span class="pl-smi">vocab_size</span>  <span class="pl-c">-- the number of distinct characters</span></td>
      </tr>
      <tr>
        <td id="L113" class="blob-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> vocab <span class="pl-k">=</span> loader.<span class="pl-smi">vocab_mapping</span></td>
      </tr>
      <tr>
        <td id="L114" class="blob-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>vocab size: <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> vocab_size)</td>
      </tr>
      <tr>
        <td id="L115" class="blob-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- make sure output directory exists</span></td>
      </tr>
      <tr>
        <td id="L116" class="blob-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-code blob-code-inner js-file-line"><span class="pl-k">if</span> <span class="pl-k">not</span> path.<span class="pl-c1">exists</span>(opt.<span class="pl-smi">checkpoint_dir</span>) <span class="pl-k">then</span> lfs.<span class="pl-c1">mkdir</span>(opt.<span class="pl-smi">checkpoint_dir</span>) <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L117" class="blob-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L118" class="blob-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- define the model: prototypes for one timestep, then clone them in time</span></td>
      </tr>
      <tr>
        <td id="L119" class="blob-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> do_random_init <span class="pl-k">=</span> <span class="pl-c1">true</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-code blob-code-inner js-file-line"><span class="pl-k">if</span> <span class="pl-c1">string.len</span>(opt.<span class="pl-smi">init_from</span>) <span class="pl-k">&gt;</span> <span class="pl-c1">0</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L121" class="blob-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>loading an LSTM from checkpoint <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> opt.<span class="pl-smi">init_from</span>)</td>
      </tr>
      <tr>
        <td id="L122" class="blob-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> checkpoint <span class="pl-k">=</span> torch.<span class="pl-c1">load</span>(opt.<span class="pl-smi">init_from</span>)</td>
      </tr>
      <tr>
        <td id="L123" class="blob-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-code blob-code-inner js-file-line">    protos <span class="pl-k">=</span> checkpoint.<span class="pl-smi">protos</span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">-- make sure the vocabs are the same</span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> vocab_compatible <span class="pl-k">=</span> <span class="pl-c1">true</span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">for</span> c,i <span class="pl-k">in</span> <span class="pl-c1">pairs</span>(checkpoint.<span class="pl-smi">vocab</span>) <span class="pl-k">do</span> </td>
      </tr>
      <tr>
        <td id="L127" class="blob-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">if</span> <span class="pl-k">not</span> vocab[c] <span class="pl-k">==</span> i <span class="pl-k">then</span> </td>
      </tr>
      <tr>
        <td id="L128" class="blob-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-code blob-code-inner js-file-line">            vocab_compatible <span class="pl-k">=</span> <span class="pl-c1">false</span></td>
      </tr>
      <tr>
        <td id="L129" class="blob-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L130" class="blob-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L131" class="blob-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1">assert</span>(vocab_compatible, <span class="pl-s"><span class="pl-pds">&#39;</span>error, the character vocabulary for this dataset and the one in the saved checkpoint are not the same. This is trouble.<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L132" class="blob-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">-- overwrite model settings based on checkpoint to ensure compatibility</span></td>
      </tr>
      <tr>
        <td id="L133" class="blob-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>overwriting rnn_size=<span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> checkpoint.<span class="pl-smi">opt</span>.<span class="pl-smi">rnn_size</span> <span class="pl-k">..</span> <span class="pl-s"><span class="pl-pds">&#39;</span>, num_layers=<span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> checkpoint.<span class="pl-smi">opt</span>.<span class="pl-smi">num_layers</span> <span class="pl-k">..</span> <span class="pl-s"><span class="pl-pds">&#39;</span> based on the checkpoint.<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L134" class="blob-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-code blob-code-inner js-file-line">    opt.<span class="pl-smi">rnn_size</span> <span class="pl-k">=</span> checkpoint.<span class="pl-smi">opt</span>.<span class="pl-smi">rnn_size</span></td>
      </tr>
      <tr>
        <td id="L135" class="blob-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-code blob-code-inner js-file-line">    opt.<span class="pl-smi">num_layers</span> <span class="pl-k">=</span> checkpoint.<span class="pl-smi">opt</span>.<span class="pl-smi">num_layers</span></td>
      </tr>
      <tr>
        <td id="L136" class="blob-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-code blob-code-inner js-file-line">    do_random_init <span class="pl-k">=</span> <span class="pl-c1">false</span></td>
      </tr>
      <tr>
        <td id="L137" class="blob-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-code blob-code-inner js-file-line"><span class="pl-k">else</span></td>
      </tr>
      <tr>
        <td id="L138" class="blob-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>creating an <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> opt.<span class="pl-smi">model</span> <span class="pl-k">..</span> <span class="pl-s"><span class="pl-pds">&#39;</span> with <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> opt.<span class="pl-smi">num_layers</span> <span class="pl-k">..</span> <span class="pl-s"><span class="pl-pds">&#39;</span> layers<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L139" class="blob-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-code blob-code-inner js-file-line">    protos <span class="pl-k">=</span> {}</td>
      </tr>
      <tr>
        <td id="L140" class="blob-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> opt.<span class="pl-smi">model</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>lstm<span class="pl-pds">&#39;</span></span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L141" class="blob-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-code blob-code-inner js-file-line">        protos.<span class="pl-smi">rnn</span> <span class="pl-k">=</span> LSTM.<span class="pl-c1">lstm</span>(vocab_size, opt.<span class="pl-smi">rnn_size</span>, opt.<span class="pl-smi">num_layers</span>, opt.<span class="pl-smi">dropout</span>)</td>
      </tr>
      <tr>
        <td id="L142" class="blob-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">elseif</span> opt.<span class="pl-smi">model</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>gru<span class="pl-pds">&#39;</span></span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L143" class="blob-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-code blob-code-inner js-file-line">        protos.<span class="pl-smi">rnn</span> <span class="pl-k">=</span> GRU.<span class="pl-c1">gru</span>(vocab_size, opt.<span class="pl-smi">rnn_size</span>, opt.<span class="pl-smi">num_layers</span>, opt.<span class="pl-smi">dropout</span>)</td>
      </tr>
      <tr>
        <td id="L144" class="blob-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">elseif</span> opt.<span class="pl-smi">model</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>rnn<span class="pl-pds">&#39;</span></span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L145" class="blob-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-code blob-code-inner js-file-line">        protos.<span class="pl-smi">rnn</span> <span class="pl-k">=</span> RNN.<span class="pl-c1">rnn</span>(vocab_size, opt.<span class="pl-smi">rnn_size</span>, opt.<span class="pl-smi">num_layers</span>, opt.<span class="pl-smi">dropout</span>)</td>
      </tr>
      <tr>
        <td id="L146" class="blob-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L147" class="blob-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-code blob-code-inner js-file-line">    protos.<span class="pl-smi">criterion</span> <span class="pl-k">=</span> nn.<span class="pl-c1">ClassNLLCriterion</span>()</td>
      </tr>
      <tr>
        <td id="L148" class="blob-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L149" class="blob-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L150" class="blob-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- the initial state of the cell/hidden states</span></td>
      </tr>
      <tr>
        <td id="L151" class="blob-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-code blob-code-inner js-file-line">init_state <span class="pl-k">=</span> {}</td>
      </tr>
      <tr>
        <td id="L152" class="blob-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-code blob-code-inner js-file-line"><span class="pl-k">for</span> L<span class="pl-k">=</span><span class="pl-c1">1</span>,opt.<span class="pl-smi">num_layers</span> <span class="pl-k">do</span></td>
      </tr>
      <tr>
        <td id="L153" class="blob-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> h_init <span class="pl-k">=</span> torch.<span class="pl-c1">zeros</span>(opt.<span class="pl-smi">batch_size</span>, opt.<span class="pl-smi">rnn_size</span>)</td>
      </tr>
      <tr>
        <td id="L154" class="blob-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">&gt;=</span><span class="pl-c1">0</span> <span class="pl-k">and</span> opt.<span class="pl-smi">opencl</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">then</span> h_init <span class="pl-k">=</span> h_init:<span class="pl-c1">cuda</span>() <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L155" class="blob-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">&gt;=</span><span class="pl-c1">0</span> <span class="pl-k">and</span> opt.<span class="pl-smi">opencl</span> <span class="pl-k">==</span> <span class="pl-c1">1</span> <span class="pl-k">then</span> h_init <span class="pl-k">=</span> h_init:<span class="pl-c1">cl</span>() <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L156" class="blob-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1">table.insert</span>(init_state, h_init:<span class="pl-c1">clone</span>())</td>
      </tr>
      <tr>
        <td id="L157" class="blob-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> opt.<span class="pl-smi">model</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>lstm<span class="pl-pds">&#39;</span></span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L158" class="blob-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">table.insert</span>(init_state, h_init:<span class="pl-c1">clone</span>())</td>
      </tr>
      <tr>
        <td id="L159" class="blob-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L160" class="blob-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L161" class="blob-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L162" class="blob-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- ship the model to the GPU if desired</span></td>
      </tr>
      <tr>
        <td id="L163" class="blob-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-code blob-code-inner js-file-line"><span class="pl-k">if</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">&gt;=</span> <span class="pl-c1">0</span> <span class="pl-k">and</span> opt.<span class="pl-smi">opencl</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L164" class="blob-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">for</span> k,v <span class="pl-k">in</span> <span class="pl-c1">pairs</span>(protos) <span class="pl-k">do</span> v:<span class="pl-c1">cuda</span>() <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L165" class="blob-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L166" class="blob-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-code blob-code-inner js-file-line"><span class="pl-k">if</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">&gt;=</span> <span class="pl-c1">0</span> <span class="pl-k">and</span> opt.<span class="pl-smi">opencl</span> <span class="pl-k">==</span> <span class="pl-c1">1</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L167" class="blob-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">for</span> k,v <span class="pl-k">in</span> <span class="pl-c1">pairs</span>(protos) <span class="pl-k">do</span> v:<span class="pl-c1">cl</span>() <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L168" class="blob-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L169" class="blob-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L170" class="blob-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- put the above things into one flattened parameters tensor</span></td>
      </tr>
      <tr>
        <td id="L171" class="blob-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-code blob-code-inner js-file-line">params, grad_params <span class="pl-k">=</span> model_utils.<span class="pl-c1">combine_all_parameters</span>(protos.<span class="pl-smi">rnn</span>)</td>
      </tr>
      <tr>
        <td id="L172" class="blob-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L173" class="blob-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- initialization</span></td>
      </tr>
      <tr>
        <td id="L174" class="blob-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-code blob-code-inner js-file-line"><span class="pl-k">if</span> do_random_init <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L175" class="blob-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-code blob-code-inner js-file-line">    params:<span class="pl-c1">uniform</span>(<span class="pl-k">-</span><span class="pl-c1">0.08</span>, <span class="pl-c1">0.08</span>) <span class="pl-c">-- small uniform numbers</span></td>
      </tr>
      <tr>
        <td id="L176" class="blob-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L177" class="blob-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- initialize the LSTM forget gates with slightly higher biases to encourage remembering in the beginning</span></td>
      </tr>
      <tr>
        <td id="L178" class="blob-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-code blob-code-inner js-file-line"><span class="pl-k">if</span> opt.<span class="pl-smi">model</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&#39;</span>lstm<span class="pl-pds">&#39;</span></span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L179" class="blob-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">for</span> layer_idx <span class="pl-k">=</span> <span class="pl-c1">1</span>, opt.<span class="pl-smi">num_layers</span> <span class="pl-k">do</span></td>
      </tr>
      <tr>
        <td id="L180" class="blob-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">for</span> _,node <span class="pl-k">in</span> <span class="pl-c1">ipairs</span>(protos.<span class="pl-smi">rnn</span>.<span class="pl-smi">forwardnodes</span>) <span class="pl-k">do</span></td>
      </tr>
      <tr>
        <td id="L181" class="blob-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">if</span> node.<span class="pl-smi">data</span>.<span class="pl-smi">annotations</span>.<span class="pl-smi">name</span> <span class="pl-k">==</span> <span class="pl-s"><span class="pl-pds">&quot;</span>i2h_<span class="pl-pds">&quot;</span></span> <span class="pl-k">..</span> layer_idx <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L182" class="blob-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-code blob-code-inner js-file-line">                <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>setting forget gate biases to 1 in LSTM layer <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> layer_idx)</td>
      </tr>
      <tr>
        <td id="L183" class="blob-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-code blob-code-inner js-file-line">                <span class="pl-c">-- the gates are, in order, i,f,o,g, so f is the 2nd block of weights</span></td>
      </tr>
      <tr>
        <td id="L184" class="blob-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-code blob-code-inner js-file-line">                node.<span class="pl-smi">data</span>.<span class="pl-smi">module</span>.<span class="pl-smi">bias</span>[{{opt.<span class="pl-smi">rnn_size</span><span class="pl-k">+</span><span class="pl-c1">1</span>, <span class="pl-c1">2</span><span class="pl-k">*</span>opt.<span class="pl-smi">rnn_size</span>}}]:<span class="pl-c1">fill</span>(<span class="pl-c1">1.0</span>)</td>
      </tr>
      <tr>
        <td id="L185" class="blob-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L187" class="blob-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L188" class="blob-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L189" class="blob-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L190" class="blob-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-code blob-code-inner js-file-line"><span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>number of parameters in the model: <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> params:<span class="pl-c1">nElement</span>())</td>
      </tr>
      <tr>
        <td id="L191" class="blob-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- make a bunch of clones after flattening, as that reallocates memory</span></td>
      </tr>
      <tr>
        <td id="L192" class="blob-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-code blob-code-inner js-file-line">clones <span class="pl-k">=</span> {}</td>
      </tr>
      <tr>
        <td id="L193" class="blob-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-code blob-code-inner js-file-line"><span class="pl-k">for</span> name,proto <span class="pl-k">in</span> <span class="pl-c1">pairs</span>(protos) <span class="pl-k">do</span></td>
      </tr>
      <tr>
        <td id="L194" class="blob-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>cloning <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> name)</td>
      </tr>
      <tr>
        <td id="L195" class="blob-num js-line-number" data-line-number="195"></td>
        <td id="LC195" class="blob-code blob-code-inner js-file-line">    clones[name] <span class="pl-k">=</span> model_utils.<span class="pl-c1">clone_many_times</span>(proto, opt.<span class="pl-smi">seq_length</span>, <span class="pl-k">not</span> proto.<span class="pl-smi">parameters</span>)</td>
      </tr>
      <tr>
        <td id="L196" class="blob-num js-line-number" data-line-number="196"></td>
        <td id="LC196" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L197" class="blob-num js-line-number" data-line-number="197"></td>
        <td id="LC197" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L198" class="blob-num js-line-number" data-line-number="198"></td>
        <td id="LC198" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- preprocessing helper function</span></td>
      </tr>
      <tr>
        <td id="L199" class="blob-num js-line-number" data-line-number="199"></td>
        <td id="LC199" class="blob-code blob-code-inner js-file-line"><span class="pl-k">function</span> <span class="pl-en">prepro</span>(<span class="pl-smi">x,y</span>)</td>
      </tr>
      <tr>
        <td id="L200" class="blob-num js-line-number" data-line-number="200"></td>
        <td id="LC200" class="blob-code blob-code-inner js-file-line">    x <span class="pl-k">=</span> x:<span class="pl-c1">transpose</span>(<span class="pl-c1">1</span>,<span class="pl-c1">2</span>):<span class="pl-c1">contiguous</span>() <span class="pl-c">-- swap the axes for faster indexing</span></td>
      </tr>
      <tr>
        <td id="L201" class="blob-num js-line-number" data-line-number="201"></td>
        <td id="LC201" class="blob-code blob-code-inner js-file-line">    y <span class="pl-k">=</span> y:<span class="pl-c1">transpose</span>(<span class="pl-c1">1</span>,<span class="pl-c1">2</span>):<span class="pl-c1">contiguous</span>()</td>
      </tr>
      <tr>
        <td id="L202" class="blob-num js-line-number" data-line-number="202"></td>
        <td id="LC202" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">&gt;=</span> <span class="pl-c1">0</span> <span class="pl-k">and</span> opt.<span class="pl-smi">opencl</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">then</span> <span class="pl-c">-- ship the input arrays to GPU</span></td>
      </tr>
      <tr>
        <td id="L203" class="blob-num js-line-number" data-line-number="203"></td>
        <td id="LC203" class="blob-code blob-code-inner js-file-line">        <span class="pl-c">-- have to convert to float because integers can&#39;t be cuda()&#39;d</span></td>
      </tr>
      <tr>
        <td id="L204" class="blob-num js-line-number" data-line-number="204"></td>
        <td id="LC204" class="blob-code blob-code-inner js-file-line">        x <span class="pl-k">=</span> x:<span class="pl-c1">float</span>():<span class="pl-c1">cuda</span>()</td>
      </tr>
      <tr>
        <td id="L205" class="blob-num js-line-number" data-line-number="205"></td>
        <td id="LC205" class="blob-code blob-code-inner js-file-line">        y <span class="pl-k">=</span> y:<span class="pl-c1">float</span>():<span class="pl-c1">cuda</span>()</td>
      </tr>
      <tr>
        <td id="L206" class="blob-num js-line-number" data-line-number="206"></td>
        <td id="LC206" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L207" class="blob-num js-line-number" data-line-number="207"></td>
        <td id="LC207" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">&gt;=</span> <span class="pl-c1">0</span> <span class="pl-k">and</span> opt.<span class="pl-smi">opencl</span> <span class="pl-k">==</span> <span class="pl-c1">1</span> <span class="pl-k">then</span> <span class="pl-c">-- ship the input arrays to GPU</span></td>
      </tr>
      <tr>
        <td id="L208" class="blob-num js-line-number" data-line-number="208"></td>
        <td id="LC208" class="blob-code blob-code-inner js-file-line">        x <span class="pl-k">=</span> x:<span class="pl-c1">cl</span>()</td>
      </tr>
      <tr>
        <td id="L209" class="blob-num js-line-number" data-line-number="209"></td>
        <td id="LC209" class="blob-code blob-code-inner js-file-line">        y <span class="pl-k">=</span> y:<span class="pl-c1">cl</span>()</td>
      </tr>
      <tr>
        <td id="L210" class="blob-num js-line-number" data-line-number="210"></td>
        <td id="LC210" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L211" class="blob-num js-line-number" data-line-number="211"></td>
        <td id="LC211" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">return</span> x,y</td>
      </tr>
      <tr>
        <td id="L212" class="blob-num js-line-number" data-line-number="212"></td>
        <td id="LC212" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L213" class="blob-num js-line-number" data-line-number="213"></td>
        <td id="LC213" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L214" class="blob-num js-line-number" data-line-number="214"></td>
        <td id="LC214" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- evaluate the loss over an entire split</span></td>
      </tr>
      <tr>
        <td id="L215" class="blob-num js-line-number" data-line-number="215"></td>
        <td id="LC215" class="blob-code blob-code-inner js-file-line"><span class="pl-k">function</span> <span class="pl-en">eval_split</span>(<span class="pl-smi">split_index, max_batches</span>)</td>
      </tr>
      <tr>
        <td id="L216" class="blob-num js-line-number" data-line-number="216"></td>
        <td id="LC216" class="blob-code blob-code-inner js-file-line">    <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>evaluating loss over split index <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> split_index)</td>
      </tr>
      <tr>
        <td id="L217" class="blob-num js-line-number" data-line-number="217"></td>
        <td id="LC217" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> n <span class="pl-k">=</span> loader.<span class="pl-smi">split_sizes</span>[split_index]</td>
      </tr>
      <tr>
        <td id="L218" class="blob-num js-line-number" data-line-number="218"></td>
        <td id="LC218" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> max_batches <span class="pl-k">~=</span> <span class="pl-c1">nil</span> <span class="pl-k">then</span> n <span class="pl-k">=</span> <span class="pl-c1">math.min</span>(max_batches, n) <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L219" class="blob-num js-line-number" data-line-number="219"></td>
        <td id="LC219" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L220" class="blob-num js-line-number" data-line-number="220"></td>
        <td id="LC220" class="blob-code blob-code-inner js-file-line">    loader:<span class="pl-c1">reset_batch_pointer</span>(split_index) <span class="pl-c">-- move batch iteration pointer for this split to front</span></td>
      </tr>
      <tr>
        <td id="L221" class="blob-num js-line-number" data-line-number="221"></td>
        <td id="LC221" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> loss <span class="pl-k">=</span> <span class="pl-c1">0</span></td>
      </tr>
      <tr>
        <td id="L222" class="blob-num js-line-number" data-line-number="222"></td>
        <td id="LC222" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> rnn_state <span class="pl-k">=</span> {[<span class="pl-c1">0</span>] <span class="pl-k">=</span> init_state}</td>
      </tr>
      <tr>
        <td id="L223" class="blob-num js-line-number" data-line-number="223"></td>
        <td id="LC223" class="blob-code blob-code-inner js-file-line">    </td>
      </tr>
      <tr>
        <td id="L224" class="blob-num js-line-number" data-line-number="224"></td>
        <td id="LC224" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">for</span> i <span class="pl-k">=</span> <span class="pl-c1">1</span>,n <span class="pl-k">do</span> <span class="pl-c">-- iterate over batches in the split</span></td>
      </tr>
      <tr>
        <td id="L225" class="blob-num js-line-number" data-line-number="225"></td>
        <td id="LC225" class="blob-code blob-code-inner js-file-line">        <span class="pl-c">-- fetch a batch</span></td>
      </tr>
      <tr>
        <td id="L226" class="blob-num js-line-number" data-line-number="226"></td>
        <td id="LC226" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">local</span> x, y <span class="pl-k">=</span> loader:<span class="pl-c1">next_batch</span>(split_index)</td>
      </tr>
      <tr>
        <td id="L227" class="blob-num js-line-number" data-line-number="227"></td>
        <td id="LC227" class="blob-code blob-code-inner js-file-line">        x,y <span class="pl-k">=</span> <span class="pl-c1">prepro</span>(x,y)</td>
      </tr>
      <tr>
        <td id="L228" class="blob-num js-line-number" data-line-number="228"></td>
        <td id="LC228" class="blob-code blob-code-inner js-file-line">        <span class="pl-c">-- forward pass</span></td>
      </tr>
      <tr>
        <td id="L229" class="blob-num js-line-number" data-line-number="229"></td>
        <td id="LC229" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">for</span> t<span class="pl-k">=</span><span class="pl-c1">1</span>,opt.<span class="pl-smi">seq_length</span> <span class="pl-k">do</span></td>
      </tr>
      <tr>
        <td id="L230" class="blob-num js-line-number" data-line-number="230"></td>
        <td id="LC230" class="blob-code blob-code-inner js-file-line">            clones.<span class="pl-smi">rnn</span>[t]:<span class="pl-c1">evaluate</span>() <span class="pl-c">-- for dropout proper functioning</span></td>
      </tr>
      <tr>
        <td id="L231" class="blob-num js-line-number" data-line-number="231"></td>
        <td id="LC231" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">local</span> lst <span class="pl-k">=</span> clones.<span class="pl-smi">rnn</span>[t]:<span class="pl-c1">forward</span>{x[t], <span class="pl-c1">unpack</span>(rnn_state[t<span class="pl-k">-</span><span class="pl-c1">1</span>])}</td>
      </tr>
      <tr>
        <td id="L232" class="blob-num js-line-number" data-line-number="232"></td>
        <td id="LC232" class="blob-code blob-code-inner js-file-line">            rnn_state[t] <span class="pl-k">=</span> {}</td>
      </tr>
      <tr>
        <td id="L233" class="blob-num js-line-number" data-line-number="233"></td>
        <td id="LC233" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">for</span> i<span class="pl-k">=</span><span class="pl-c1">1</span>,<span class="pl-k">#</span>init_state <span class="pl-k">do</span> <span class="pl-c1">table.insert</span>(rnn_state[t], lst[i]) <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L234" class="blob-num js-line-number" data-line-number="234"></td>
        <td id="LC234" class="blob-code blob-code-inner js-file-line">            prediction <span class="pl-k">=</span> lst[<span class="pl-k">#</span>lst] </td>
      </tr>
      <tr>
        <td id="L235" class="blob-num js-line-number" data-line-number="235"></td>
        <td id="LC235" class="blob-code blob-code-inner js-file-line">            loss <span class="pl-k">=</span> loss <span class="pl-k">+</span> clones.<span class="pl-smi">criterion</span>[t]:<span class="pl-c1">forward</span>(prediction, y[t])</td>
      </tr>
      <tr>
        <td id="L236" class="blob-num js-line-number" data-line-number="236"></td>
        <td id="LC236" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L237" class="blob-num js-line-number" data-line-number="237"></td>
        <td id="LC237" class="blob-code blob-code-inner js-file-line">        <span class="pl-c">-- carry over lstm state</span></td>
      </tr>
      <tr>
        <td id="L238" class="blob-num js-line-number" data-line-number="238"></td>
        <td id="LC238" class="blob-code blob-code-inner js-file-line">        rnn_state[<span class="pl-c1">0</span>] <span class="pl-k">=</span> rnn_state[<span class="pl-k">#</span>rnn_state]</td>
      </tr>
      <tr>
        <td id="L239" class="blob-num js-line-number" data-line-number="239"></td>
        <td id="LC239" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(i <span class="pl-k">..</span> <span class="pl-s"><span class="pl-pds">&#39;</span>/<span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> n <span class="pl-k">..</span> <span class="pl-s"><span class="pl-pds">&#39;</span>...<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L240" class="blob-num js-line-number" data-line-number="240"></td>
        <td id="LC240" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L241" class="blob-num js-line-number" data-line-number="241"></td>
        <td id="LC241" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L242" class="blob-num js-line-number" data-line-number="242"></td>
        <td id="LC242" class="blob-code blob-code-inner js-file-line">    loss <span class="pl-k">=</span> loss <span class="pl-k">/</span> opt.<span class="pl-smi">seq_length</span> <span class="pl-k">/</span> n</td>
      </tr>
      <tr>
        <td id="L243" class="blob-num js-line-number" data-line-number="243"></td>
        <td id="LC243" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">return</span> loss</td>
      </tr>
      <tr>
        <td id="L244" class="blob-num js-line-number" data-line-number="244"></td>
        <td id="LC244" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L245" class="blob-num js-line-number" data-line-number="245"></td>
        <td id="LC245" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L246" class="blob-num js-line-number" data-line-number="246"></td>
        <td id="LC246" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- do fwd/bwd and return loss, grad_params</span></td>
      </tr>
      <tr>
        <td id="L247" class="blob-num js-line-number" data-line-number="247"></td>
        <td id="LC247" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> init_state_global <span class="pl-k">=</span> <span class="pl-c1">clone_list</span>(init_state)</td>
      </tr>
      <tr>
        <td id="L248" class="blob-num js-line-number" data-line-number="248"></td>
        <td id="LC248" class="blob-code blob-code-inner js-file-line"><span class="pl-k">function</span> <span class="pl-en">feval</span>(<span class="pl-smi">x</span>)</td>
      </tr>
      <tr>
        <td id="L249" class="blob-num js-line-number" data-line-number="249"></td>
        <td id="LC249" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> x <span class="pl-k">~=</span> params <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L250" class="blob-num js-line-number" data-line-number="250"></td>
        <td id="LC250" class="blob-code blob-code-inner js-file-line">        params:<span class="pl-c1">copy</span>(x)</td>
      </tr>
      <tr>
        <td id="L251" class="blob-num js-line-number" data-line-number="251"></td>
        <td id="LC251" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L252" class="blob-num js-line-number" data-line-number="252"></td>
        <td id="LC252" class="blob-code blob-code-inner js-file-line">    grad_params:<span class="pl-c1">zero</span>()</td>
      </tr>
      <tr>
        <td id="L253" class="blob-num js-line-number" data-line-number="253"></td>
        <td id="LC253" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L254" class="blob-num js-line-number" data-line-number="254"></td>
        <td id="LC254" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">------------------ get minibatch -------------------</span></td>
      </tr>
      <tr>
        <td id="L255" class="blob-num js-line-number" data-line-number="255"></td>
        <td id="LC255" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> x, y <span class="pl-k">=</span> loader:<span class="pl-c1">next_batch</span>(<span class="pl-c1">1</span>)</td>
      </tr>
      <tr>
        <td id="L256" class="blob-num js-line-number" data-line-number="256"></td>
        <td id="LC256" class="blob-code blob-code-inner js-file-line">    x,y <span class="pl-k">=</span> <span class="pl-c1">prepro</span>(x,y)</td>
      </tr>
      <tr>
        <td id="L257" class="blob-num js-line-number" data-line-number="257"></td>
        <td id="LC257" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">------------------- forward pass -------------------</span></td>
      </tr>
      <tr>
        <td id="L258" class="blob-num js-line-number" data-line-number="258"></td>
        <td id="LC258" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> rnn_state <span class="pl-k">=</span> {[<span class="pl-c1">0</span>] <span class="pl-k">=</span> init_state_global}</td>
      </tr>
      <tr>
        <td id="L259" class="blob-num js-line-number" data-line-number="259"></td>
        <td id="LC259" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> predictions <span class="pl-k">=</span> {}           <span class="pl-c">-- softmax outputs</span></td>
      </tr>
      <tr>
        <td id="L260" class="blob-num js-line-number" data-line-number="260"></td>
        <td id="LC260" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> loss <span class="pl-k">=</span> <span class="pl-c1">0</span></td>
      </tr>
      <tr>
        <td id="L261" class="blob-num js-line-number" data-line-number="261"></td>
        <td id="LC261" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">for</span> t<span class="pl-k">=</span><span class="pl-c1">1</span>,opt.<span class="pl-smi">seq_length</span> <span class="pl-k">do</span></td>
      </tr>
      <tr>
        <td id="L262" class="blob-num js-line-number" data-line-number="262"></td>
        <td id="LC262" class="blob-code blob-code-inner js-file-line">        clones.<span class="pl-smi">rnn</span>[t]:<span class="pl-c1">training</span>() <span class="pl-c">-- make sure we are in correct mode (this is cheap, sets flag)</span></td>
      </tr>
      <tr>
        <td id="L263" class="blob-num js-line-number" data-line-number="263"></td>
        <td id="LC263" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">local</span> lst <span class="pl-k">=</span> clones.<span class="pl-smi">rnn</span>[t]:<span class="pl-c1">forward</span>{x[t], <span class="pl-c1">unpack</span>(rnn_state[t<span class="pl-k">-</span><span class="pl-c1">1</span>])}</td>
      </tr>
      <tr>
        <td id="L264" class="blob-num js-line-number" data-line-number="264"></td>
        <td id="LC264" class="blob-code blob-code-inner js-file-line">        rnn_state[t] <span class="pl-k">=</span> {}</td>
      </tr>
      <tr>
        <td id="L265" class="blob-num js-line-number" data-line-number="265"></td>
        <td id="LC265" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">for</span> i<span class="pl-k">=</span><span class="pl-c1">1</span>,<span class="pl-k">#</span>init_state <span class="pl-k">do</span> <span class="pl-c1">table.insert</span>(rnn_state[t], lst[i]) <span class="pl-k">end</span> <span class="pl-c">-- extract the state, without output</span></td>
      </tr>
      <tr>
        <td id="L266" class="blob-num js-line-number" data-line-number="266"></td>
        <td id="LC266" class="blob-code blob-code-inner js-file-line">        predictions[t] <span class="pl-k">=</span> lst[<span class="pl-k">#</span>lst] <span class="pl-c">-- last element is the prediction</span></td>
      </tr>
      <tr>
        <td id="L267" class="blob-num js-line-number" data-line-number="267"></td>
        <td id="LC267" class="blob-code blob-code-inner js-file-line">        loss <span class="pl-k">=</span> loss <span class="pl-k">+</span> clones.<span class="pl-smi">criterion</span>[t]:<span class="pl-c1">forward</span>(predictions[t], y[t])</td>
      </tr>
      <tr>
        <td id="L268" class="blob-num js-line-number" data-line-number="268"></td>
        <td id="LC268" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L269" class="blob-num js-line-number" data-line-number="269"></td>
        <td id="LC269" class="blob-code blob-code-inner js-file-line">    loss <span class="pl-k">=</span> loss <span class="pl-k">/</span> opt.<span class="pl-smi">seq_length</span></td>
      </tr>
      <tr>
        <td id="L270" class="blob-num js-line-number" data-line-number="270"></td>
        <td id="LC270" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">------------------ backward pass -------------------</span></td>
      </tr>
      <tr>
        <td id="L271" class="blob-num js-line-number" data-line-number="271"></td>
        <td id="LC271" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">-- initialize gradient at time t to be zeros (there&#39;s no influence from future)</span></td>
      </tr>
      <tr>
        <td id="L272" class="blob-num js-line-number" data-line-number="272"></td>
        <td id="LC272" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> drnn_state <span class="pl-k">=</span> {[opt.<span class="pl-smi">seq_length</span>] <span class="pl-k">=</span> <span class="pl-c1">clone_list</span>(init_state, <span class="pl-c1">true</span>)} <span class="pl-c">-- true also zeros the clones</span></td>
      </tr>
      <tr>
        <td id="L273" class="blob-num js-line-number" data-line-number="273"></td>
        <td id="LC273" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">for</span> t<span class="pl-k">=</span>opt.<span class="pl-smi">seq_length</span>,<span class="pl-c1">1</span>,<span class="pl-k">-</span><span class="pl-c1">1</span> <span class="pl-k">do</span></td>
      </tr>
      <tr>
        <td id="L274" class="blob-num js-line-number" data-line-number="274"></td>
        <td id="LC274" class="blob-code blob-code-inner js-file-line">        <span class="pl-c">-- backprop through loss, and softmax/linear</span></td>
      </tr>
      <tr>
        <td id="L275" class="blob-num js-line-number" data-line-number="275"></td>
        <td id="LC275" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">local</span> doutput_t <span class="pl-k">=</span> clones.<span class="pl-smi">criterion</span>[t]:<span class="pl-c1">backward</span>(predictions[t], y[t])</td>
      </tr>
      <tr>
        <td id="L276" class="blob-num js-line-number" data-line-number="276"></td>
        <td id="LC276" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">table.insert</span>(drnn_state[t], doutput_t)</td>
      </tr>
      <tr>
        <td id="L277" class="blob-num js-line-number" data-line-number="277"></td>
        <td id="LC277" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">local</span> dlst <span class="pl-k">=</span> clones.<span class="pl-smi">rnn</span>[t]:<span class="pl-c1">backward</span>({x[t], <span class="pl-c1">unpack</span>(rnn_state[t<span class="pl-k">-</span><span class="pl-c1">1</span>])}, drnn_state[t])</td>
      </tr>
      <tr>
        <td id="L278" class="blob-num js-line-number" data-line-number="278"></td>
        <td id="LC278" class="blob-code blob-code-inner js-file-line">        drnn_state[t<span class="pl-k">-</span><span class="pl-c1">1</span>] <span class="pl-k">=</span> {}</td>
      </tr>
      <tr>
        <td id="L279" class="blob-num js-line-number" data-line-number="279"></td>
        <td id="LC279" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">for</span> k,v <span class="pl-k">in</span> <span class="pl-c1">pairs</span>(dlst) <span class="pl-k">do</span></td>
      </tr>
      <tr>
        <td id="L280" class="blob-num js-line-number" data-line-number="280"></td>
        <td id="LC280" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">if</span> k <span class="pl-k">&gt;</span> <span class="pl-c1">1</span> <span class="pl-k">then</span> <span class="pl-c">-- k == 1 is gradient on x, which we dont need</span></td>
      </tr>
      <tr>
        <td id="L281" class="blob-num js-line-number" data-line-number="281"></td>
        <td id="LC281" class="blob-code blob-code-inner js-file-line">                <span class="pl-c">-- note we do k-1 because first item is dembeddings, and then follow the </span></td>
      </tr>
      <tr>
        <td id="L282" class="blob-num js-line-number" data-line-number="282"></td>
        <td id="LC282" class="blob-code blob-code-inner js-file-line">                <span class="pl-c">-- derivatives of the state, starting at index 2. I know...</span></td>
      </tr>
      <tr>
        <td id="L283" class="blob-num js-line-number" data-line-number="283"></td>
        <td id="LC283" class="blob-code blob-code-inner js-file-line">                drnn_state[t<span class="pl-k">-</span><span class="pl-c1">1</span>][k<span class="pl-k">-</span><span class="pl-c1">1</span>] <span class="pl-k">=</span> v</td>
      </tr>
      <tr>
        <td id="L284" class="blob-num js-line-number" data-line-number="284"></td>
        <td id="LC284" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L285" class="blob-num js-line-number" data-line-number="285"></td>
        <td id="LC285" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L286" class="blob-num js-line-number" data-line-number="286"></td>
        <td id="LC286" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L287" class="blob-num js-line-number" data-line-number="287"></td>
        <td id="LC287" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">------------------------ misc ----------------------</span></td>
      </tr>
      <tr>
        <td id="L288" class="blob-num js-line-number" data-line-number="288"></td>
        <td id="LC288" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">-- transfer final state to initial state (BPTT)</span></td>
      </tr>
      <tr>
        <td id="L289" class="blob-num js-line-number" data-line-number="289"></td>
        <td id="LC289" class="blob-code blob-code-inner js-file-line">    init_state_global <span class="pl-k">=</span> rnn_state[<span class="pl-k">#</span>rnn_state] <span class="pl-c">-- NOTE: I don&#39;t think this needs to be a clone, right?</span></td>
      </tr>
      <tr>
        <td id="L290" class="blob-num js-line-number" data-line-number="290"></td>
        <td id="LC290" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">-- grad_params:div(opt.seq_length) -- this line should be here but since we use rmsprop it would have no effect. Removing for efficiency</span></td>
      </tr>
      <tr>
        <td id="L291" class="blob-num js-line-number" data-line-number="291"></td>
        <td id="LC291" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">-- clip gradient element-wise</span></td>
      </tr>
      <tr>
        <td id="L292" class="blob-num js-line-number" data-line-number="292"></td>
        <td id="LC292" class="blob-code blob-code-inner js-file-line">    grad_params:<span class="pl-c1">clamp</span>(<span class="pl-k">-</span>opt.<span class="pl-smi">grad_clip</span>, opt.<span class="pl-smi">grad_clip</span>)</td>
      </tr>
      <tr>
        <td id="L293" class="blob-num js-line-number" data-line-number="293"></td>
        <td id="LC293" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">return</span> loss, grad_params</td>
      </tr>
      <tr>
        <td id="L294" class="blob-num js-line-number" data-line-number="294"></td>
        <td id="LC294" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L295" class="blob-num js-line-number" data-line-number="295"></td>
        <td id="LC295" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L296" class="blob-num js-line-number" data-line-number="296"></td>
        <td id="LC296" class="blob-code blob-code-inner js-file-line"><span class="pl-c">-- start optimization here</span></td>
      </tr>
      <tr>
        <td id="L297" class="blob-num js-line-number" data-line-number="297"></td>
        <td id="LC297" class="blob-code blob-code-inner js-file-line">train_losses <span class="pl-k">=</span> {}</td>
      </tr>
      <tr>
        <td id="L298" class="blob-num js-line-number" data-line-number="298"></td>
        <td id="LC298" class="blob-code blob-code-inner js-file-line">val_losses <span class="pl-k">=</span> {}</td>
      </tr>
      <tr>
        <td id="L299" class="blob-num js-line-number" data-line-number="299"></td>
        <td id="LC299" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> optim_state <span class="pl-k">=</span> {learningRate <span class="pl-k">=</span> opt.<span class="pl-smi">learning_rate</span>, alpha <span class="pl-k">=</span> opt.<span class="pl-smi">decay_rate</span>}</td>
      </tr>
      <tr>
        <td id="L300" class="blob-num js-line-number" data-line-number="300"></td>
        <td id="LC300" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> iterations <span class="pl-k">=</span> opt.<span class="pl-smi">max_epochs</span> <span class="pl-k">*</span> loader.<span class="pl-smi">ntrain</span></td>
      </tr>
      <tr>
        <td id="L301" class="blob-num js-line-number" data-line-number="301"></td>
        <td id="LC301" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> iterations_per_epoch <span class="pl-k">=</span> loader.<span class="pl-smi">ntrain</span></td>
      </tr>
      <tr>
        <td id="L302" class="blob-num js-line-number" data-line-number="302"></td>
        <td id="LC302" class="blob-code blob-code-inner js-file-line"><span class="pl-k">local</span> loss0 <span class="pl-k">=</span> <span class="pl-c1">nil</span></td>
      </tr>
      <tr>
        <td id="L303" class="blob-num js-line-number" data-line-number="303"></td>
        <td id="LC303" class="blob-code blob-code-inner js-file-line"><span class="pl-k">for</span> i <span class="pl-k">=</span> <span class="pl-c1">1</span>, iterations <span class="pl-k">do</span></td>
      </tr>
      <tr>
        <td id="L304" class="blob-num js-line-number" data-line-number="304"></td>
        <td id="LC304" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> epoch <span class="pl-k">=</span> i <span class="pl-k">/</span> loader.<span class="pl-smi">ntrain</span></td>
      </tr>
      <tr>
        <td id="L305" class="blob-num js-line-number" data-line-number="305"></td>
        <td id="LC305" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L306" class="blob-num js-line-number" data-line-number="306"></td>
        <td id="LC306" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> timer <span class="pl-k">=</span> torch.<span class="pl-c1">Timer</span>()</td>
      </tr>
      <tr>
        <td id="L307" class="blob-num js-line-number" data-line-number="307"></td>
        <td id="LC307" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> _, loss <span class="pl-k">=</span> optim.<span class="pl-c1">rmsprop</span>(feval, params, optim_state)</td>
      </tr>
      <tr>
        <td id="L308" class="blob-num js-line-number" data-line-number="308"></td>
        <td id="LC308" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> opt.<span class="pl-smi">accurate_gpu_timing</span> <span class="pl-k">==</span> <span class="pl-c1">1</span> <span class="pl-k">and</span> opt.<span class="pl-smi">gpuid</span> <span class="pl-k">&gt;=</span> <span class="pl-c1">0</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L309" class="blob-num js-line-number" data-line-number="309"></td>
        <td id="LC309" class="blob-code blob-code-inner js-file-line">        <span class="pl-c">--[[</span></td>
      </tr>
      <tr>
        <td id="L310" class="blob-num js-line-number" data-line-number="310"></td>
        <td id="LC310" class="blob-code blob-code-inner js-file-line"><span class="pl-c">        Note on timing: The reported time can be off because the GPU is invoked async. If one</span></td>
      </tr>
      <tr>
        <td id="L311" class="blob-num js-line-number" data-line-number="311"></td>
        <td id="LC311" class="blob-code blob-code-inner js-file-line"><span class="pl-c">        wants to have exactly accurate timings one must call cutorch.synchronize() right here.</span></td>
      </tr>
      <tr>
        <td id="L312" class="blob-num js-line-number" data-line-number="312"></td>
        <td id="LC312" class="blob-code blob-code-inner js-file-line"><span class="pl-c">        I will avoid doing so by default because this can incur computational overhead.</span></td>
      </tr>
      <tr>
        <td id="L313" class="blob-num js-line-number" data-line-number="313"></td>
        <td id="LC313" class="blob-code blob-code-inner js-file-line"><span class="pl-c">        --]]</span></td>
      </tr>
      <tr>
        <td id="L314" class="blob-num js-line-number" data-line-number="314"></td>
        <td id="LC314" class="blob-code blob-code-inner js-file-line">        cutorch.<span class="pl-c1">synchronize</span>()</td>
      </tr>
      <tr>
        <td id="L315" class="blob-num js-line-number" data-line-number="315"></td>
        <td id="LC315" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L316" class="blob-num js-line-number" data-line-number="316"></td>
        <td id="LC316" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> time <span class="pl-k">=</span> timer:<span class="pl-c1">time</span>().<span class="pl-smi">real</span></td>
      </tr>
      <tr>
        <td id="L317" class="blob-num js-line-number" data-line-number="317"></td>
        <td id="LC317" class="blob-code blob-code-inner js-file-line">    </td>
      </tr>
      <tr>
        <td id="L318" class="blob-num js-line-number" data-line-number="318"></td>
        <td id="LC318" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">local</span> train_loss <span class="pl-k">=</span> loss[<span class="pl-c1">1</span>] <span class="pl-c">-- the loss is inside a list, pop it</span></td>
      </tr>
      <tr>
        <td id="L319" class="blob-num js-line-number" data-line-number="319"></td>
        <td id="LC319" class="blob-code blob-code-inner js-file-line">    train_losses[i] <span class="pl-k">=</span> train_loss</td>
      </tr>
      <tr>
        <td id="L320" class="blob-num js-line-number" data-line-number="320"></td>
        <td id="LC320" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L321" class="blob-num js-line-number" data-line-number="321"></td>
        <td id="LC321" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">-- exponential learning rate decay</span></td>
      </tr>
      <tr>
        <td id="L322" class="blob-num js-line-number" data-line-number="322"></td>
        <td id="LC322" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> i <span class="pl-k">%</span> loader.<span class="pl-smi">ntrain</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">and</span> opt.<span class="pl-smi">learning_rate_decay</span> <span class="pl-k">&lt;</span> <span class="pl-c1">1</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L323" class="blob-num js-line-number" data-line-number="323"></td>
        <td id="LC323" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">if</span> epoch <span class="pl-k">&gt;=</span> opt.<span class="pl-smi">learning_rate_decay_after</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L324" class="blob-num js-line-number" data-line-number="324"></td>
        <td id="LC324" class="blob-code blob-code-inner js-file-line">            <span class="pl-k">local</span> decay_factor <span class="pl-k">=</span> opt.<span class="pl-smi">learning_rate_decay</span></td>
      </tr>
      <tr>
        <td id="L325" class="blob-num js-line-number" data-line-number="325"></td>
        <td id="LC325" class="blob-code blob-code-inner js-file-line">            optim_state.<span class="pl-smi">learningRate</span> <span class="pl-k">=</span> optim_state.<span class="pl-smi">learningRate</span> <span class="pl-k">*</span> decay_factor <span class="pl-c">-- decay it</span></td>
      </tr>
      <tr>
        <td id="L326" class="blob-num js-line-number" data-line-number="326"></td>
        <td id="LC326" class="blob-code blob-code-inner js-file-line">            <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>decayed learning rate by a factor <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> decay_factor <span class="pl-k">..</span> <span class="pl-s"><span class="pl-pds">&#39;</span> to <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> optim_state.<span class="pl-smi">learningRate</span>)</td>
      </tr>
      <tr>
        <td id="L327" class="blob-num js-line-number" data-line-number="327"></td>
        <td id="LC327" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L328" class="blob-num js-line-number" data-line-number="328"></td>
        <td id="LC328" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L329" class="blob-num js-line-number" data-line-number="329"></td>
        <td id="LC329" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L330" class="blob-num js-line-number" data-line-number="330"></td>
        <td id="LC330" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">-- every now and then or on last iteration</span></td>
      </tr>
      <tr>
        <td id="L331" class="blob-num js-line-number" data-line-number="331"></td>
        <td id="LC331" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> i <span class="pl-k">%</span> opt.<span class="pl-smi">eval_val_every</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">or</span> i <span class="pl-k">==</span> iterations <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L332" class="blob-num js-line-number" data-line-number="332"></td>
        <td id="LC332" class="blob-code blob-code-inner js-file-line">        <span class="pl-c">-- evaluate loss on validation data</span></td>
      </tr>
      <tr>
        <td id="L333" class="blob-num js-line-number" data-line-number="333"></td>
        <td id="LC333" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">local</span> val_loss <span class="pl-k">=</span> <span class="pl-c1">eval_split</span>(<span class="pl-c1">2</span>) <span class="pl-c">-- 2 = validation</span></td>
      </tr>
      <tr>
        <td id="L334" class="blob-num js-line-number" data-line-number="334"></td>
        <td id="LC334" class="blob-code blob-code-inner js-file-line">        val_losses[i] <span class="pl-k">=</span> val_loss</td>
      </tr>
      <tr>
        <td id="L335" class="blob-num js-line-number" data-line-number="335"></td>
        <td id="LC335" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L336" class="blob-num js-line-number" data-line-number="336"></td>
        <td id="LC336" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">local</span> savefile <span class="pl-k">=</span> <span class="pl-c1">string.format</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>%s/lm_%s_epoch%.2f_%.4f.t7<span class="pl-pds">&#39;</span></span>, opt.<span class="pl-smi">checkpoint_dir</span>, opt.<span class="pl-smi">savefile</span>, epoch, val_loss)</td>
      </tr>
      <tr>
        <td id="L337" class="blob-num js-line-number" data-line-number="337"></td>
        <td id="LC337" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>saving checkpoint to <span class="pl-pds">&#39;</span></span> <span class="pl-k">..</span> savefile)</td>
      </tr>
      <tr>
        <td id="L338" class="blob-num js-line-number" data-line-number="338"></td>
        <td id="LC338" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">local</span> checkpoint <span class="pl-k">=</span> {}</td>
      </tr>
      <tr>
        <td id="L339" class="blob-num js-line-number" data-line-number="339"></td>
        <td id="LC339" class="blob-code blob-code-inner js-file-line">        checkpoint.<span class="pl-smi">protos</span> <span class="pl-k">=</span> protos</td>
      </tr>
      <tr>
        <td id="L340" class="blob-num js-line-number" data-line-number="340"></td>
        <td id="LC340" class="blob-code blob-code-inner js-file-line">        checkpoint.<span class="pl-smi">opt</span> <span class="pl-k">=</span> opt</td>
      </tr>
      <tr>
        <td id="L341" class="blob-num js-line-number" data-line-number="341"></td>
        <td id="LC341" class="blob-code blob-code-inner js-file-line">        checkpoint.<span class="pl-smi">train_losses</span> <span class="pl-k">=</span> train_losses</td>
      </tr>
      <tr>
        <td id="L342" class="blob-num js-line-number" data-line-number="342"></td>
        <td id="LC342" class="blob-code blob-code-inner js-file-line">        checkpoint.<span class="pl-smi">val_loss</span> <span class="pl-k">=</span> val_loss</td>
      </tr>
      <tr>
        <td id="L343" class="blob-num js-line-number" data-line-number="343"></td>
        <td id="LC343" class="blob-code blob-code-inner js-file-line">        checkpoint.<span class="pl-smi">val_losses</span> <span class="pl-k">=</span> val_losses</td>
      </tr>
      <tr>
        <td id="L344" class="blob-num js-line-number" data-line-number="344"></td>
        <td id="LC344" class="blob-code blob-code-inner js-file-line">        checkpoint.<span class="pl-smi">i</span> <span class="pl-k">=</span> i</td>
      </tr>
      <tr>
        <td id="L345" class="blob-num js-line-number" data-line-number="345"></td>
        <td id="LC345" class="blob-code blob-code-inner js-file-line">        checkpoint.<span class="pl-smi">epoch</span> <span class="pl-k">=</span> epoch</td>
      </tr>
      <tr>
        <td id="L346" class="blob-num js-line-number" data-line-number="346"></td>
        <td id="LC346" class="blob-code blob-code-inner js-file-line">        checkpoint.<span class="pl-smi">vocab</span> <span class="pl-k">=</span> loader.<span class="pl-smi">vocab_mapping</span></td>
      </tr>
      <tr>
        <td id="L347" class="blob-num js-line-number" data-line-number="347"></td>
        <td id="LC347" class="blob-code blob-code-inner js-file-line">        torch.<span class="pl-c1">save</span>(savefile, checkpoint)</td>
      </tr>
      <tr>
        <td id="L348" class="blob-num js-line-number" data-line-number="348"></td>
        <td id="LC348" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L349" class="blob-num js-line-number" data-line-number="349"></td>
        <td id="LC349" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L350" class="blob-num js-line-number" data-line-number="350"></td>
        <td id="LC350" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> i <span class="pl-k">%</span> opt.<span class="pl-smi">print_every</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L351" class="blob-num js-line-number" data-line-number="351"></td>
        <td id="LC351" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-c1">string.format</span>(<span class="pl-s"><span class="pl-pds">&quot;</span>%d/%d (epoch %.3f), train_loss = %6.8f, grad/param norm = %6.4e, time/batch = %.4fs<span class="pl-pds">&quot;</span></span>, i, iterations, epoch, train_loss, grad_params:<span class="pl-c1">norm</span>() <span class="pl-k">/</span> params:<span class="pl-c1">norm</span>(), time))</td>
      </tr>
      <tr>
        <td id="L352" class="blob-num js-line-number" data-line-number="352"></td>
        <td id="LC352" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L353" class="blob-num js-line-number" data-line-number="353"></td>
        <td id="LC353" class="blob-code blob-code-inner js-file-line">   </td>
      </tr>
      <tr>
        <td id="L354" class="blob-num js-line-number" data-line-number="354"></td>
        <td id="LC354" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> i <span class="pl-k">%</span> <span class="pl-c1">10</span> <span class="pl-k">==</span> <span class="pl-c1">0</span> <span class="pl-k">then</span> <span class="pl-c1">collectgarbage</span>() <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L355" class="blob-num js-line-number" data-line-number="355"></td>
        <td id="LC355" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L356" class="blob-num js-line-number" data-line-number="356"></td>
        <td id="LC356" class="blob-code blob-code-inner js-file-line">    <span class="pl-c">-- handle early stopping if things are going really bad</span></td>
      </tr>
      <tr>
        <td id="L357" class="blob-num js-line-number" data-line-number="357"></td>
        <td id="LC357" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> loss[<span class="pl-c1">1</span>] <span class="pl-k">~=</span> loss[<span class="pl-c1">1</span>] <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L358" class="blob-num js-line-number" data-line-number="358"></td>
        <td id="LC358" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>loss is NaN.  This usually indicates a bug.  Please check the issues page for existing issues, or create a new issue, if none exist.  Ideally, please state: your operating system, 32-bit/64-bit, your blas version, cpu/cuda/cl?<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L359" class="blob-num js-line-number" data-line-number="359"></td>
        <td id="LC359" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">break</span> <span class="pl-c">-- halt</span></td>
      </tr>
      <tr>
        <td id="L360" class="blob-num js-line-number" data-line-number="360"></td>
        <td id="LC360" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L361" class="blob-num js-line-number" data-line-number="361"></td>
        <td id="LC361" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> loss0 <span class="pl-k">==</span> <span class="pl-c1">nil</span> <span class="pl-k">then</span> loss0 <span class="pl-k">=</span> loss[<span class="pl-c1">1</span>] <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L362" class="blob-num js-line-number" data-line-number="362"></td>
        <td id="LC362" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">if</span> loss[<span class="pl-c1">1</span>] <span class="pl-k">&gt;</span> loss0 <span class="pl-k">*</span> <span class="pl-c1">3</span> <span class="pl-k">then</span></td>
      </tr>
      <tr>
        <td id="L363" class="blob-num js-line-number" data-line-number="363"></td>
        <td id="LC363" class="blob-code blob-code-inner js-file-line">        <span class="pl-c1">print</span>(<span class="pl-s"><span class="pl-pds">&#39;</span>loss is exploding, aborting.<span class="pl-pds">&#39;</span></span>)</td>
      </tr>
      <tr>
        <td id="L364" class="blob-num js-line-number" data-line-number="364"></td>
        <td id="LC364" class="blob-code blob-code-inner js-file-line">        <span class="pl-k">break</span> <span class="pl-c">-- halt</span></td>
      </tr>
      <tr>
        <td id="L365" class="blob-num js-line-number" data-line-number="365"></td>
        <td id="LC365" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L366" class="blob-num js-line-number" data-line-number="366"></td>
        <td id="LC366" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L367" class="blob-num js-line-number" data-line-number="367"></td>
        <td id="LC367" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L368" class="blob-num js-line-number" data-line-number="368"></td>
        <td id="LC368" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

        </div>
      </div>
      <div class="modal-backdrop"></div>
    </div>
  </div>


    </div>

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>
        <li><a href="https://github.com/pricing" data-ga-click="Footer, go to pricing, text:pricing">Pricing</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.04565s from github-fe141-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



    
    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <span class="octicon octicon-x"></span>
      </button>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-2e7fc3d264a208e1383de85b815379beccff56c1f977714515d4cac7820eef3e.js"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-cd5accdb3e59cd654e0f67e7b903e6e00dd053943d2df4bfc1a7c1cbb8be0e6e.js"></script>
      
      
    <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner hidden">
      <span class="octicon octicon-alert"></span>
      <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
      <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
    </div>
  </body>
</html>

