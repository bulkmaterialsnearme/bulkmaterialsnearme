<script>
  /** @type {import('./$types').LayoutData} */
  export let data;
  console.log("data: +layout.svelte");
  // console.log(data);
  // console.log(import.meta.env);

  import { appData } from "$lib/stores.js";
  appData.subscribe((value) => {
    [];
  });
  appData.set(data);

  import "chota";
  // optional import focus-visible polyfill only once
  import "focus-visible";

  // Custom components
  import Header from "$lib/header/header.svelte";
  import Footer from "$lib/footer/footer.svelte";
</script>

<Header />
<slot />
<Footer />

<style global>
  :root {
    /* Example base 64 encoded image for css as a :root var in url attribute */
    /* --img-base-64: url("data:image/png;base64,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"); */
  }
  .center {
    text-align: center;
  }
  .left {
    text-align: left;
  }
  .right {
    text-align: right;
  }
  .spacer {
    padding: 3em;
  }

  .app-bar-container {
    position: fixed;
    width: 100vw;
    left: 0;
    top: 0;
    right: 0;
    z-index: 20;
  }
  .material-icons {
    font-family: "Material Icons";
    font-weight: normal;
    font-style: normal;
    font-size: 24px; /* Preferred icon size */
    display: inline-block;
    line-height: 1;
    text-transform: none;
    letter-spacing: normal;
    word-wrap: normal;
    white-space: nowrap;
    direction: ltr;

    /* Support for all WebKit browsers. */
    -webkit-font-smoothing: antialiased;
    /* Support for Safari and Chrome. */
    text-rendering: optimizeLegibility;

    /* Support for Firefox. */
    -moz-osx-font-smoothing: grayscale;

    /* Support for IE. */
    font-feature-settings: "liga";
  }

  /* material icons */
  @font-face {
    font-family: "Material Icons";
    font-style: normal;
    font-weight: 400;
    src: url("%sveltekit.assets%/icons/MaterialIcons-Regular.eot"); /* For IE6-8 */
    src: local("Material Icons"), local("MaterialIcons-Regular"),
      /* url("%sveltekit.assets%/icons/MaterialIcons-Regular.woff2")
				format("woff2"),
			url("%sveltekit.assets%/icons/MaterialIcons-Regular.woff") format("woff"), */
        url("%sveltekit.assets%/icons/MaterialIcons-Regular.ttf")
        format("truetype");
  }
  /* Rules for sizing the icon. */
  .material-icons.md-18 {
    font-size: 18px;
  }
  .material-icons.md-24 {
    font-size: 24px;
  }
  .material-icons.md-36 {
    font-size: 36px;
  }
  .material-icons.md-48 {
    font-size: 48px;
  }

  /* Rules for using icons as black on a light background. */
  .material-icons.md-dark {
    color: rgba(0, 0, 0, 0.54);
  }
  .material-icons.md-dark.md-inactive {
    color: rgba(0, 0, 0, 0.26);
  }

  /* Rules for using icons as white on a dark background. */
  .material-icons.md-light {
    color: rgba(255, 255, 255, 1);
  }
  .material-icons.md-light.md-inactive {
    color: rgba(255, 255, 255, 0.3);
  }
  .side-panel h1 {
  }
  .toolbar {
    height: auto;
    padding: 0 4px 0 1rem;
    display: flex;
    align-items: center;
    color: #fff;
    background: #4e5e69;
  }
  .subheading {
  }
  .subheading h2 {
    padding: 0px;
    font-size: 12px;
  }
  .message {
    color: #fff;
  }
  input.input {
    color: #333;
  }
</style>
