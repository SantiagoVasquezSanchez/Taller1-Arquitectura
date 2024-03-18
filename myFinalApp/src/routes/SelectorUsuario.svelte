<script lang="ts">
    export let src = 'https://www.anipedia.net/imagenes/que-comen-los-perros.jpg';
    export let name = 'cachorro';
    const guardarDato =(newScr: string, newAlt: string) =>{
        src = newScr;
        name = newAlt;
    };
</script>
<div>
    <button on:click={() => guardarDato("https://th.bing.com/th/id/OIP.r_q4AfKhVxpfX5V8lfQJZAHaEK?pid=ImgDet&w=474&h=266&rs=1","sonriendo")}> 
        Ingresar</button>
</div>
<img {src} alt={name}/>

