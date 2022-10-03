<script lang="ts">
import axios from 'axios';
import {
  CheckIcon
} from '@heroicons/vue/outline'

export default {
  data() {
    return {
      todos: []
    }
  },

  mounted() {
    axios.get('/todos.json')
         .then(response => {
            this.todos = response.data.todos.map(todo => {
              return {
                id: todo.id,
                title: todo.title,
                url: `/todos/${todo.id}`
              }
            })
         }) 
  }
}
</script>

<template>
  <div v-for="(todo, todoIdx) in todos" :key="todo.title" :class="[todoIdx === 0 ? 'rounded-tl-lg rounded-tr-lg sm:rounded-tr-none' : '', todoIdx === 1 ? 'sm:rounded-tr-lg' : '', todoIdx === todos.length - 2 ? 'sm:rounded-bl-lg' : '', todoIdx === todos.length - 1 ? 'rounded-bl-lg rounded-br-lg sm:rounded-bl-none' : '', 'relative group bg-white p-6 focus-within:ring-2 focus-within:ring-inset focus-within:ring-indigo-500']">
    <div>
      <span class="bg-green-700 text-white rounded-lg inline-flex p-3 ring-4 ring-white">
        <component :is="CheckIcon" class="h-6 w-6" aria-hidden="true" />
      </span>
    </div>
    <div class="mt-8">
      <h3 class="text-lg font-medium">
        <a :href="todo.url" class="focus:outline-none">
          <!-- Extend touch target to entire panel -->
          <span class="absolute inset-0" aria-hidden="true" />
          {{ todo.title }}
        </a>
      </h3>
      <p class="mt-2 text-sm text-gray-500">Doloribus dolores nostrum quia qui natus officia quod et dolorem. Sit repellendus qui ut at blanditiis et quo et molestiae.</p>
    </div>
    <span class="pointer-events-none absolute top-6 right-6 text-gray-300 group-hover:text-gray-400" aria-hidden="true">
      <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24">
        <path d="M20 4h1a1 1 0 00-1-1v1zm-1 12a1 1 0 102 0h-2zM8 3a1 1 0 000 2V3zM3.293 19.293a1 1 0 101.414 1.414l-1.414-1.414zM19 4v12h2V4h-2zm1-1H8v2h12V3zm-.707.293l-16 16 1.414 1.414 16-16-1.414-1.414z" />
      </svg>
    </span>
  </div>
</template>