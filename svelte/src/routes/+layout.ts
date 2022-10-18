export const prerender = true
import { env } from '$env/dynamic/public';
/** @type {import('./$types').LayoutLoad} */
export function load() {
  return {
    env
  };
}
