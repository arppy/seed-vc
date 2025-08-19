#run for an entire directory
#for SOURCE in /home/berta/data/Torgo/wav/*wav; do python inference.py --source $SOURCE --target /home/berta/data/LJSpeech/wav/LJ050-0245.wav --output Torgo --diffusion-steps 25 --length-adjust 1.0 --inference-cfg-rate 0.7 --f0-condition False --auto-f0-adjust False --semi-tone-shift 0 --fp16 True; done
for SOURCE in /home/berta/data/Torgo/wav_preprocess_pydub/*wav; do python inference.py --source $SOURCE --target /home/berta/data/LJSpeech/wav_preprocess_pydub/LJ050-0245.wav --output Torgo_prep --diffusion-steps 25 --length-adjust 1.0 --inference-cfg-rate 0.7 --f0-condition False --auto-f0-adjust False --semi-tone-shift 0 --fp16 True; done
# rename 's/^vc_//; s/_LJ050-0245_1\.0_25_0\.7\.wav$/.wav/' *.wav
