<script setup>
import ListenerComponent from "./components/ListenerComponent.vue";
import TemplateReference from "./components/TemplateReference.vue";
// 1. ref + function
// import { ref } from "vue";
// const num1 = ref(0);
// const num2 = ref(0);
// const result = ref(0);

// const add = () => (result.value = parseInt(num1.value) + parseInt(num2.value));

// 2. ref + computed
// import { ref, computed } from "vue";
// const num1 = ref(0);
// const num2 = ref(0);
// const result = computed(() => parseInt(num1.value) + parseInt(num2.value));

// 3. reactive

import { reactive, computed } from "vue";
import PropsComponent from "./components/PropsComponent.vue";
import SlotComponent from "./components/SlotComponent.vue";
import DynamicComponent from "./components/DynamicComponent.vue";
import AttributeComponent from "./components/AttributeComponent.vue";
import MultipleRootAttributeComponent from "./components/MultipleRootAttributeComponent.vue";
import NameSlotComponent from "./components/NameSlotComponent.vue";
import ProvideComponent from "./components/ProvideComponent/index.vue";

const state = reactive({
  num1: 0,
  num2: 0,
  result: computed(() => parseInt(state.num1) + parseInt(state.num2)),
});
const changeTitle = (title) => {
  console.log(title);
};

const handleClick = () => console.log("父组件handleClick");
</script>

<template>
  <ListenerComponent />
  <br />
  <TemplateReference />
  <br />
  <!-- <input type="text" v-model="state.num1" />
  <span>+</span>
  <input type="text" v-model="state.num2" />
  <span>=</span>
  <input type="text" v-model="state.result" /> -->
  <PropsComponent title="传递Props" @change-title="changeTitle" />
  <br />
  <SlotComponent> 这是传递给子组件插槽的内容 </SlotComponent>
  <br />
  <DynamicComponent />
  <br />
  <AttributeComponent class="parent" @click="handleClick" />
  <br />
  <MultipleRootAttributeComponent @click="handleClick" />
  <br />
  <NameSlotComponent>
    <template #header="headerProps"> 标题部分 {{ headerProps }} </template>
    <template #default="contentProps">
      内容部分 {{ contentProps.text }}</template
    >
    <template #footer="{ text, color }">
      底部部分
      <span :style="{ color: color }">{{ text }}{{ color }}</span>
    </template>
  </NameSlotComponent>
  <br />
  <ProvideComponent />
</template>

<style scoped>
.parent {
  background-color: #ccc;
}
</style>
