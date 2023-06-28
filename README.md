# device_media

Easy pick image
```
  ElevatedButton(
        onPressed: () {
          context.showUpdateAvatar().then((value) {
            showToastMessage('$value');
            return value;
          });
        },
        child: const Text('pickPhoto'),
      ),
```
