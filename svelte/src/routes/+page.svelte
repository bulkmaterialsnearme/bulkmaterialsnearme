<script>
  import "chota";
  import { Row, Col, Container } from "svelte-chota";

  // MUI components
  // import any components
  import { Button, Icon, Menu, Menuitem, Checkbox } from "svelte-mui";
  import {
    home,
    menu,
    invertColors,
    moreVert,
    arrowForward,
    arrowDropDown,
    close,
    add,
    chevronRight,
    chevronLeft,
  } from "$lib/mui-components/components/icons";

  import Map from "$lib/svg-components/usa-map.svelte";

  export let name = "test";
  // import any components
  let checked = true;
  let amount = "$27.88-$29.86 / ton";

  import MapTest from "$lib/maps/test.svelte";
</script>

<!-- <Map /> -->

<Container>
  <Row>
    <Col size="12" class="spacer" />

    <Col size="12">
      <MapTest />
    </Col>
  </Row>
</Container>

<!-- <Checkbox bind:checked>Checkbox</Checkbox> -->
<!-- <p>Checkbox is <strong>{checked ? "checked" : "unchecked"}</strong></p> -->

<!-- <Button
  outlined
  shaped
  color="Red"
  on:click={() => {
    checked = !checked;
  }}
>
  Inverse
</Button> -->

<!-- <span class="price-marker price-location">
  <span class="material-icons md-36">location_on</span>
  {amount}
</span> -->
<style>
  h1 {
    color: purple;
  }
  .price-marker {
    color: #333;
    padding: 1em;
    background: #fff;
    max-width: 100px;
    border-radius: 5px;
    max-height: 10px;
    display: flex;
    border: 1px solid #333;
  }
  .price:hover {
    color: #333;
    text-shadow: 1px 3px 2px #000;
    cursor: pointer;
  }
  .price-location {
    position: absolute;
    top: 10.5em;
    left: 8.2em;
    z-index: 2;
  }
  svg {
    border: none !important;
  }
</style>
