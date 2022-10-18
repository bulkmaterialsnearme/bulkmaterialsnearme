<script>
  export let name;

  // import any components
  import { Button, Checkbox } from "svelte-mui";

  let checked = true;
</script>

<h1>Hello {name}!</h1>

<Checkbox bind:checked>Checkbox</Checkbox>

<p>Checkbox is <strong>{checked ? "checked" : "unchecked"}</strong></p>

<Button
  outlined
  shaped
  color="Red"
  on:click={() => {
    checked = !checked;
  }}
>
  Inverse
</Button>

<style>
  h1 {
    color: purple;
  }
</style>
