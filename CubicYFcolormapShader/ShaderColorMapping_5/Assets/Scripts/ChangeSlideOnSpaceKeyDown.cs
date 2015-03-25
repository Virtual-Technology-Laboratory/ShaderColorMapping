/*
 * Author: Roger Lew (rogerlew@vandals.uidaho.edu || rogerlew@gmail.com)
 * Date: 2/5/2015
 * License: Public Domain
 * 
 * This illustrates how the slides can be dynamically changed by setting
 * the "_ShadowTex" texture of the projector's material.
 * 
 * The opacity of the shader can specified by setting "_Opacity" on the
 * projector's material. The opacity should be between 0 and 1.
 * 
 */


using UnityEngine;
using System.Collections;

public class ChangeSlideOnSpaceKeyDown : MonoBehaviour
{

    private Texture2D[] textures;
    private int current_tex = 0;

    private Renderer meshRenderer;

    public void set_texture(Texture2D texture)
    {
        meshRenderer.material.SetTexture("_MainTex", texture);
    }

    
    void Start()
    {
        meshRenderer = GetComponent<Renderer>();
        textures = new Texture2D[] { Resources.Load<Texture2D>("basemapNVDI-00"),
                                     Resources.Load<Texture2D>("basemapNVDI-08") };
    }

	// Update is called once per frame
	void Update ()
    {

        if (Input.GetKeyDown(KeyCode.Space))
        {
            // east_grad_a isn't included in the prefab
            if (textures[0] == null || textures[1] == null)
                return;

            current_tex += 1;
            current_tex %= 2;
            set_texture(textures[current_tex]);
        }


	}
}
