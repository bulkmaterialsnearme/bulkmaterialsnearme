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

  import { page } from "$app/stores";
</script>

<Container>
  <Row>
    <Col size="12" class="spacer" />

    <Col size="12">
      {$page.url.pathname}
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
<style>
</style>
