{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License version 3.0
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License version 3.0
 *}

{if $homeslider.slides}
  <script>
      function createVideo(file, poster) {
          const video = document.createElement('video');
          video.autoplay = true;
          video.playsInline = true;
          video.muted = true;
          video.loop = true;

          const source = document.createElement('source');
          source.type = 'video/mp4';
          source.src = file

          video.appendChild(source);

          if (poster) {
              video.poster = poster
          }

          return video;
      }

      function createImage(file) {
          const img = document.createElement('img');
          img.src = file
          return img;
      }

      function addFile(file, poster, container_id) {
          const file_type = file.split('.').at(-1)

          if (['mp4'].includes(file_type)) { // video
              const video = createVideo(file, poster);
              document.querySelector(container_id).appendChild(video);
          } else { // image
              const img = createImage(file);
              document.querySelector(container_id).appendChild(img);
          }
      }
  </script>
  <div class="homeslider-container" data-interval="{$homeslider.speed}" data-wrap="{$homeslider.wrap}" data-pause="{$homeslider.pause}">
    <ul class="rslides">
      {foreach from=$homeslider.slides item=slide name=homeslider}
        {assign var=index value=$smarty.foreach.homeslider.index}
        <li class="slide">
          {if !empty($slide.url)}<a href="{$slide.url}">{/if}

            <div id="homeslider_container_{$index}"></div>

            <script>
                (function() {
                  const container_id = "#homeslider_container_{$index}";
                  let file;
                  let poster;
                    if (window.innerWidth <= 768) {
                        file = "{if $slide.image_mobile}{$slide.image_mobile_url}{else}{$slide.image_desktop_url}{/if}";
                        poster = "{if $slide.poster_mobile_url}{$slide.poster_mobile_url}{else}{$slide.poster_desktop_url}{/if}";
                    } else {
                        file = "{$slide.image_desktop_url}";
                        poster = "{if $slide.poster_desktop_url}{$slide.poster_desktop_url}{/if}";
                    }
                    addFile(file, poster, container_id)
                })()
            </script>

            {if $slide.title || $slide.description }
              <span class="caption">
                <h2>{$slide.title}</h2>
                <div>{$slide.description nofilter}</div>
              </span>
            {/if}
          {if !empty($slide.url)}</a>{/if}
        </li>
      {/foreach}
    </ul>
  </div>
{/if}
