import { sveltekit } from '@sveltejs/kit/vite';
import type { UserConfig } from 'vite';

const config: UserConfig = {
	plugins: [sveltekit()],
	target: 'es2015',
	minify: 'terser',
	server: {
		port: '80',
		host: '0.0.0.0'
	} 
};

export default config;
