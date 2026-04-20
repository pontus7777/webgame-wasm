declare const Module: any;

console.log('Loading WebAssembly…');

Module.onRuntimeInitialized = () => {
  console.log('WASM initialized');
};
