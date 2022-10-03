<template>
  <div class="divide-y divide-gray-200 overflow-hidden rounded-lg bg-gray-200 shadow sm:grid sm:grid-cols-2 sm:gap-px sm:divide-y-0">
    <Todos />
  </div>
</template>

<script setup lang="ts">
  import Todos from './Todos.vue';
</script>

<style lang="postcss">
@tailwind base;
@tailwind components;
@tailwind utilities;

.app {
  @apply flex flex-col h-screen;
}
</style>
