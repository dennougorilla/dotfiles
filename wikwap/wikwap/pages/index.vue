<template>
  <div class="container">
    <div class="section">
      <!-- Staff -->
      <div class="row columns is-multiline">
        <div class="column is-one-third">
          <div class="card" v-on:click="getwiki">
            <header class="card-header">
              <p class="card-header-title" >
                {{datas.query.pages[Object.keys(datas.query.pages)].title}}
              </p>
            </header>
            <div class="card-content">
              <div class="content">
                {{datas.query.pages[Object.keys(datas.query.pages)].extract}}
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="column is-one-third">
        <div class="card large round">
          <div class="content">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum
            consequatur numquam aliquam tenetur ad amet inventore hic beatae,
            quas accusantium perferendis sapiente explicabo, corporis totam!
            Labore reprehenderit beatae magnam animi!
          </div>
        </div>
      </div>

      <div class="column is-one-third">
        <div class="card large round">
          <div class="content">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum
            consequatur numquam aliquam tenetur ad amet inventore hic beatae,
            quas accusantium perferendis sapiente explicabo, corporis totam!
            Labore reprehenderit beatae magnam animi!
          </div>
        </div>
      </div>
      <!-- End Staff -->
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  mounted() {
    axios.get('https://en.wikipedia.org/w/api.php?origin=*&action=query&format=json&prop=extracts&redirects=1&exchars=300&explaintext=1&titles=Apple')
      .then(res => {
        this.datas = res.data
        console.log(res.data.query.pages[Object.keys(res.data.query.pages)].title)
        console.log(res.data.query.pages[Object.keys(res.data.query.pages)].extract)
      })
      .catch(e => {
        this.errors.push(e)
      })
  },
  data() {
    return {
      datas: {
        query: {
          pages: {
            title: ''
          }
        }
      },
      errors: []
    }
  },
  methods: {
    getwiki: function(event) {
      axios.get('https://en.wikipedia.org/w/api.php?origin=*&action=query&format=json&prop=extracts&redirects=1&exchars=300&explaintext=1&titles=Apple')
        .then(res => {
          this.datas = res.data
          console.log(res.data.query)
        })
        .catch(e => {
          this.errors.push(e)
        })
    }
  }
}
</script>
